<?php

class MinhaContaController extends Zend_Controller_Action {

    public function init() {
        $login = new Zend_Session_Namespace("login");
        $action = $this->_request->getActionName();
        $uri = Zend_Controller_Front::getInstance()->getRequest()->getRequestUri();
        if (($this->_request->getActionName() != "login" && $this->_request->getActionName() != "redefinir-senha" && $this->_request->getActionName() != "recuperar-senha" && $this->_request->getActionName() != "logout")) {
            $redirecionamento = new Zend_Session_Namespace("redirecionamento");
            $redirecionamento->url = $uri;
        }

        if ($action != 'login' && $action != 'logout' && $action != 'redefinir-senha' && $action != 'recuperar-senha') {
            if (!$login->id) {
                // Armazena o erro
                $this->_helper->FlashMessenger->addMessage(array('erro' => 'Por favor, fa&ccedil;a login'));
                $this->_redirect('/minha-conta/login');
            }
        }


        parent::init();
    }

    public function indexAction() {
        $this->_helper->layout()->setLayout('area-cliente');
        $ModelTipos = new Admin_Model_Categorias();

        $lista = $ModelTipos->ListFull();
        $this->view->tipos = $lista;
    }

    public function vendedoresAction() {
        $this->_helper->layout()->setLayout('area-cliente');
        $login = new Zend_Session_Namespace("login");
        $param = (int) $this->_request->getParam('produto');

        $ModelNegociacao = new Admin_Model_NegociacaoPropostas();
        $ModelProdutos = new Admin_Model_ProdutoVendedores();

        $verifica = $ModelNegociacao->VerificaNegociacao($param, $login->id, 2);

        if ($verifica) {
            $this->_helper->FlashMessenger->addMessage(array('erro' => 'Não é possível fazer a negociação, para produtos que esteja em uma negociação com o status em andamento, aguarde o vendedor!'));
            $this->_redirect($_SERVER[HTTP_REFERER]);
        }

        $dados_vendedor = $ModelProdutos->GetId($param);
        $this->view->vendedores = $dados_vendedor;
    }

    public function negociarAction() {
        $this->_helper->layout()->setLayout('area-cliente');
        $termo = new Zend_Session_Namespace("termo");
        $login = new Zend_Session_Namespace("login");
        $vendedor = (int) $this->_request->getParam('vendedor');
        $produto = (int) $this->_request->getParam('produto');
        $session_negociar = new Zend_Session_Namespace("session_negociar");
        $action = $this->_request->getActionName();

        if ($action != 'negociar') {
            if ($termo->compra != 'yes') {
                $this->_helper->FlashMessenger->addMessage(array('erro' => 'Aceite o termo de compra para continuar!'));
                $this->_redirect("/");
            }
        }

        if (empty($produto)) {
            $this->_helper->FlashMessenger->addMessage(array('erro' => 'Produto não selecionado!'));
            $this->_redirect($_SERVER[HTTP_REFERER]);
        }

        if (empty($vendedor)) {
            $this->_helper->FlashMessenger->addMessage(array('erro' => 'Vendedor não selecionado!'));
            $this->_redirect($_SERVER[HTTP_REFERER]);
        }

        if (empty($vendedor) && empty($produto)) {
            $this->_helper->FlashMessenger->addMessage(array('erro' => 'Não é possível fazer a negociação!'));
            $this->_redirect($_SERVER[HTTP_REFERER]);
        }

        $ModelVendedor = new Admin_Model_Usuarios();
        $ModelEnderecos = new Admin_Model_ClienteEnderecos();
        $ModelCondicao = new Admin_Model_CondicaoPagamento();
        $condicoes = $ModelCondicao->ListarCondicao();
        $ModelForma = new Admin_Model_FormaPagamento();
        $Formas = $ModelForma->ListarForma();
        $listaEnderecos = $ModelEnderecos->GetEnderecos($login->id);

        if ($this->_request->isPost()) {
            $post = $this->_request->getPost();
            $session_negociar->dados = $post;

            if (empty($post['quantidade'])) {
                $this->_helper->FlashMessenger->addMessage(array('erro' => 'Insira a Quantidade!'));
                $this->_redirect('/cadastro');
            }

            if (empty($post['preco'])) {
                $this->_helper->FlashMessenger->addMessage(array('erro' => 'Insira o preço!'));
                $this->_redirect('/cadastro');
            }

            if (empty($post['data_entrega'])) {
                $this->_helper->FlashMessenger->addMessage(array('erro' => 'Insira a data!'));
                $this->_redirect('/cadastro');
            }

            if (empty($post['endereco'])) {
                $this->_helper->FlashMessenger->addMessage(array('erro' => 'Selecione o endereço!'));
                $this->_redirect('/cadastro');
            }

            $this->_helper->FlashMessenger->addMessage(array('erro' => 'Confirme sua proposta!'));
            $this->_redirect('/minha-conta/confirmacao');
        }

        $dados_vendedor = $ModelVendedor->GetDados($vendedor);
        $this->view->dados_vendedor = $dados_vendedor;
        $this->view->vendedor = $vendedor;
        $this->view->produto = $produto;
        $this->view->condicoes = $condicoes;
        $this->view->formas = $Formas;
        $this->view->enderecos = $listaEnderecos;
        $this->view->dados = $session_negociar->dados;
    }

    public function cancelarConfirmacaoAction() {
        $session_negociar = new Zend_Session_Namespace("session_negociar");
        unset($session_negociar->dados);
        $this->_redirect('/minha-conta');
    }

    public function fazerNegociacaoAction() {
        $this->_helper->layout()->setLayout('area-cliente');
        $session_negociar = new Zend_Session_Namespace("session_negociar");
        $login = new Zend_Session_Namespace("login");
        $negociacao = (int) $this->_request->getParam('negociacao');
        $ModelNegociacao = new Admin_Model_NegociacaoPropostas();
        $ModelEnderecos = new Admin_Model_ClienteEnderecos();

        $dados = $ModelNegociacao->GetNegociacao(FALSE, FALSE, FALSE, $negociacao);

        $ModelCondicao = new Admin_Model_CondicaoPagamento();
        $condicoes = $ModelCondicao->ListarCondicao();
        $ModelForma = new Admin_Model_FormaPagamento();
        $Formas = $ModelForma->ListarForma();
        $listaEnderecos = $ModelEnderecos->GetEnderecos($login->id);

        if ($this->_request->isPost()) {
            $post = $this->_request->getPost();
            $session_negociar->dados = $post;

            if (empty($post['quantidade'])) {
                $this->_helper->FlashMessenger->addMessage(array('erro' => 'Insira a Quantidade!'));
                $this->_redirect('/cadastro');
            }

            if (empty($post['preco'])) {
                $this->_helper->FlashMessenger->addMessage(array('erro' => 'Insira o preço!'));
                $this->_redirect('/cadastro');
            }

            if (empty($post['data_entrega'])) {
                $this->_helper->FlashMessenger->addMessage(array('erro' => 'Insira a data!'));
                $this->_redirect('/cadastro');
            }

            $this->_helper->FlashMessenger->addMessage(array('erro' => 'Confirme sua proposta!'));
            $this->_redirect('/minha-conta/confirmacao');
        }

        $this->view->dados_negociacao = $dados;
        $this->view->condicoes = $condicoes;
        $this->view->formas = $Formas;
        $this->view->negociacao = $negociacao;
        $this->view->enderecos = $listaEnderecos;
    }

    public function aprovarNegociacaoAction() {
        $negociacao = (int) $this->_request->getParam('negociacao');
        $login = new Zend_Session_Namespace("login");
        $ModelNegociacao = new Admin_Model_NegociacaoPropostas();
        $idcliente = $login->id;

        $ModelNegociacao->update(array('status' => 3, 'fechada_por' => 'Cliente'), "id = '" . $negociacao . "' AND cliente = '" . $idcliente . "'");
        $ModelNegociacao->update(array('status' => 3, 'fechada_por' => 'Cliente'), "negociacao = '" . $negociacao . "' AND cliente = '" . $idcliente . "'");

        $dados_negociacao = $ModelNegociacao->GetNegociacao(FALSE, FALSE, FALSE, $negociacao);

        if (!empty($dados_negociacao['email_vendedor'])) {
            $assunto = "Aprovação da Negociação de Nº" . $negociacao;
            Zend_Controller_Action_HelperBroker::getStaticHelper('Emails')->Emails('', $dados_negociacao['email_vendedor'], $assunto, $dados_negociacao, false, 'emails/aprovacao-proposta.phtml');
        }

        $this->_helper->FlashMessenger->addMessage(array('sucesso' => 'Proposta aprovada com sucesso!'));
        $this->_redirect('/minha-conta');
    }

    public function removerPropostaAction() {
        $id = $this->_request->getParam('id');
        $login = new Zend_Session_Namespace("login");
        $ModelNegociacoes = new Admin_Model_NegociacaoPropostas();
        $cliente = $login->id;

        $result = $ModelNegociacoes->GetDados($id);

        if ($result['status'] == '3') {
            $this->_helper->FlashMessenger->addMessage(array('erro' => 'Não é possível remover a proposta com status fechada!!'));
            $this->_redirect('/minha-conta/negociacao/status/1');
        }

        $ModelNegociacoes->delete("id = '" . $id . "' AND cliente = '" . $cliente . "'");


        //Adiciona a mensagem de sucesso
        $this->_helper->FlashMessenger->addMessage(array('sucesso' => 'A proposta foi removida com sucesso!'));
        $this->_redirect($_SERVER['HTTP_REFERER']);
    }

    public function cancelarNegociacaoAction() {
        $negociacao = (int) $this->_request->getParam('negociacao');
        $login = new Zend_Session_Namespace("login");
        $ModelNegociacao = new Admin_Model_NegociacaoPropostas();
        $idcliente = $login->id;

        $ModelNegociacao->update(array('status' => 4), "id = '" . $negociacao . "' AND cliente = '" . $idcliente . "'");
        $ModelNegociacao->update(array('status' => 4), "negociacao = '" . $negociacao . "' AND cliente = '" . $idcliente . "'");
        $this->_helper->FlashMessenger->addMessage(array('sucesso' => 'Sua proposta foi cancelada com sucesso!'));
        $this->_redirect('/minha-conta');
    }

    public function visualizaNegociacaoAction() {
        $this->_helper->layout()->setLayout('area-cliente');
        $login = new Zend_Session_Namespace("login");
        $negociacao = $this->_request->getParam('negociacao');

        $ModelNegociacao = new Admin_Model_NegociacaoPropostas();
        $dados = $ModelNegociacao->GetAllNegociacao($negociacao, $login->id);

//        Zend_Debug::dump($dados);
//        die;

        $this->view->dados = $dados;
    }

    public function confirmacaoAction() {
        $this->_helper->layout()->setLayout('area-cliente');
        $session_negociar = new Zend_Session_Namespace("session_negociar");
        $termo = new Zend_Session_Namespace("termo");
        $login = new Zend_Session_Namespace("login");
        $confirmar = $this->_request->getParam('confirmar');

        if ($confirmar == true) {
            $ModelNegociacao = new Admin_Model_NegociacaoPropostas();
            unset($termo->compra);
            $session_negociar->dados['cliente'] = $login->id;
            $session_negociar->dados['enviada_por'] = 'Cliente';
            $session_negociar->dados['ip'] = $_SERVER['REMOTE_ADDR'];
            if (!empty($session_negociar->dados['negociacao'])) {
                $negociacao = $session_negociar->dados['negociacao'];
                $idcliente = $login->id;
                $ModelNegociacao->update(array('status' => 1), "id = '" . $negociacao . "' AND cliente = '" . $idcliente . "'");
                $ModelNegociacao->update(array('status' => 1), "negociacao = '" . $negociacao . "' AND cliente = '" . $idcliente . "'");
            }

            $id = $ModelNegociacao->insert($session_negociar->dados);
            if ($id) {
                $dados_negociacao = $ModelNegociacao->GetNegociacao(FALSE, FALSE, FALSE, $id);

                if (!empty($dados_negociacao['email_vendedor'])) {
                    $assunto = "Nova Proposta referente ao produto: " . $dados_negociacao['nome_item'] . ' - ' . $dados_negociacao['nome_categoria'];
                    Zend_Controller_Action_HelperBroker::getStaticHelper('Emails')->Emails('', $dados_negociacao['email_vendedor'], $assunto, $dados_negociacao, false, 'emails/proposta.phtml');
                }

                /* Limpo a sessão de cadastro e redireciona para a pagina inicial do sistema */
                unset($session_negociar->dados);
                $this->_helper->FlashMessenger->addMessage(array('sucesso' => 'Sua proposta foi enviada com sucesso, em breve retornaremos!'));
                $this->_redirect('/minha-conta');
            }
        }


        $ModelProdutos = new Admin_Model_Produtos();
        $DadosProduto = $ModelProdutos->GetProduto($session_negociar->dados['produto']);

        $ModelVendedor = new Admin_Model_Usuarios();
        $DadosVendedor = $ModelVendedor->GetDados($session_negociar->dados['vendedor']);

        $ModelCondicaoPagamento = new Admin_Model_CondicaoPagamento();
        $DadosCondicao = $ModelCondicaoPagamento->GetDados($session_negociar->dados['condicao_pagamento']);

        $ModelFormaPagamento = new Admin_Model_FormaPagamento();
        $DadosForma = $ModelFormaPagamento->GetDados($session_negociar->dados['forma_pagamento']);

        $ModelEndereco = new Admin_Model_ClienteEnderecos();
        $DadosEndereco = $ModelEndereco->GetDados($session_negociar->dados['endereco']);

        $this->view->dados = $session_negociar->dados;
        $this->view->dados_produto = $DadosProduto;
        $this->view->dados_vendedor = $DadosVendedor;
        $this->view->dados_condicao = $DadosCondicao;
        $this->view->dados_forma = $DadosForma;
        $this->view->dados_endereco = $DadosEndereco;
    }

    public function negociacaoAction() {
        $this->_helper->layout()->setLayout('area-cliente');
        $login = new Zend_Session_Namespace("login");
        // Cria a sessão do cliente

        $status = (int) $this->_request->getParam('status');
        $ModelNegociacao = new Admin_Model_NegociacaoPropostas();

        $lista = $ModelNegociacao->GetNegociacoes($login->id, $status, FALSE, TRUE);
        $this->view->dados = $lista;
    }

    public function loginAction() {

        // Cria a sessão do cliente
        $login = new Zend_Session_Namespace("login");
        $ModelCliente = new Admin_Model_Clientes();
        $ModelAcessos = new Admin_Model_Acessos();

        if (!empty($login->id)) {
            $this->redirect('/minha-conta');
        }

        if ($this->_request->isPost()) {
            $post = $this->_request->getPost();

            if (empty($post['email'])) {
                // Armazena o erro
                $this->_helper->FlashMessenger->addMessage(array('erro' => 'Por favor digite o login!'));

                // Redireciona o usuário para a pagina de login
                $this->_redirect("/");
            }
            $row = $ModelCliente->BuscarLogin($post['email']);

            if (!$row) {

                // Armazena o erro
                $this->_helper->FlashMessenger->addMessage(array('erro' => 'E-mail inexistente!'));

                // Redireciona o usuário para a pagina de login
                $this->_redirect("/");
            } else {

                // Verifica se a senha é valida
                if ($row['senha'] == sha1($post['senha'])) {
                    $redirecionamento = new Zend_Session_Namespace("redirecionamento");
                    $login->id = $row['id'];
                    $login->nome1 = $row['nome1'];
                    $login->doc1 = $row['doc1'];
                    $login->doc2 = $row['doc2'];
                    $login->ultimo_acesso = $row['data_acesso'];
                    $login->logado = TRUE;
                    $login->email = $row['email'];

                    /* Atualizo o data de ultimo login */
                    //$ModelCliente->update(array('ultimo_acesso' => date('Y-m-d H:i:s'), 'ip' => $_SERVER['REMOTE_ADDR']), "id =" . $row['id']);

                    $dados_acesso = array(
                        'usuario' => $row['id'],
                        'ip' => $_SERVER['REMOTE_ADDR'],
                        'data_acesso' => date('Y-m-d H:i:s')
                    );

                    $ModelAcessos->insert($dados_acesso);

                    if ($login->logado == TRUE) {
                        if (isset($redirecionamento->url)) {
                            // die($redirecionamento->url);
                            $url = $redirecionamento->url;
                            Zend_Session::namespaceUnset("redirecionamento");
                            $this->_redirect($url);
                        } else {
                            $this->_redirect('/');
                        }
                    }
                } else {

                    $this->_helper->FlashMessenger->addMessage(array('erro' => 'Senha inv&aacute;lida!'));

                    // Redireciona o usuário para a pagina de login
                    $this->_redirect("/");
                }
            }
        }
    }

    public function redefinirSenhaAction() {

        /* Adiciono a sessão */
        $recover = new Zend_Session_Namespace("senha");

        /* Adiciono a Model */
        $ModelClientes = new Admin_Model_Clientes();

        $chave = $this->_request->getParam('chave');
        $id = $this->_request->getParam('id');

        if (!empty($id)) {
            /* Faço uma consulta */
            $row = $ModelClientes->GetUser($id);

            if ($row['chave'] != $chave) {
                $this->_helper->FlashMessenger->addMessage(array('erro' => 'Sua chave de redefinição de senha não mais válida, Solicite uma nova'));
                $this->_redirect("/minha-conta/login");
            }
        }


        if (!empty($chave) && !empty($id)) {
            $recover->chave = $chave;
            $recover->id = $id;

            $this->redirect('/minha-conta/redefinir-senha');
        }

        if (!empty($recover->id)) {
            /* Faço uma consulta */
            $row = $ModelClientes->GetUser($recover->id);
        } else {
            $this->_helper->FlashMessenger->addMessage(array('erro' => ' Ação não permitida, Solicite uma chave de redefinição de senha'));
            $this->_redirect("/minha-conta/login");
        }


        if ($row['chave'] != $recover->chave) {
            $this->_helper->FlashMessenger->addMessage(array('erro' => 'Sua chave de redefinição de senha não é mais válida!, Solicite uma nova'));
            $this->_redirect("/minha-conta/login");
        }

        /* Se for Post */
        if ($this->_request->isPost()) {

            /* armazeno em uma variavel o post */
            $post = $this->_request->getPost();

            if ($row['chave'] == $recover->chave) {
                if ($post['senha'] == $post['confirma_senha']) {

                    /* Limpo a chave de Redefinição de senha */
                    $ModelClientes->update(array('chave' => ''), "id =" . $recover->id);

                    /* Atualizo a senha */
                    $ModelClientes->update(array('senha' => $post['senha']), "id =" . $recover->id);

                    $this->_helper->FlashMessenger->addMessage(array('sucesso' => 'Senha redefenida com sucesso!'));

                    $result = $ModelClientes->GetUser($recover->id);

                    $conteudo = array('nome' => $result['nome1'], 'senha' => $post['senha']);
                    $assunto = "Redefinição de senha";

                    Zend_Controller_Action_HelperBroker::getStaticHelper('Emails')->Emails('', $result['email'], $assunto, $conteudo, false, 'emails/novasenha.phtml');

                    /* Limpo a Sessão */
                    Zend_Session::namespaceUnset("senha");

                    $this->_redirect("/minha-conta/login");
                } else {
                    $this->_helper->FlashMessenger->addMessage(array('erro' => 'As senhas não se coincidem!'));

                    $this->_redirect("/minha-conta/redefinir-senha/");
                }
            } else {

                $this->_helper->FlashMessenger->addMessage(array('erro' => 'Sua chave de redefinição de senha não é mais válida!, Solicite uma nova'));

                /* Limpo a Sessão */
                Zend_Session::namespaceUnset("senha");

                $this->_redirect("/minha-conta/login");
            }

            /* Limpo a Sessão */
            Zend_Session::namespaceUnset("senha");
            $this->_redirect($_SERVER['HTTP_REFERER']);
        }
    }

    public function recuperarSenhaAction() {

        // Verifica se existe dados do post
        if ($this->_request->isPost()) {

            //Adiciona a Model de empresas
            $ModelClientes = new Admin_Model_Clientes();

            //Recupera o email digitado
            $email = $this->_request->getParam("email");

            if ($email == NULL) {

                // Armazena o erro
                $this->_helper->FlashMessenger->addMessage(array('erro' => 'Digite o e-mail!'));

                // Redireciona o usuário para a pagina de recuperação de senha
                $this->_redirect("/minha-conta/login");
            } else {

                //Verifica se existe o E-mail
                $row = $ModelClientes->BuscarLogin($email);
            }
            //Se existir
            if ($row != false) {

                // Gera a chave unica
                $chave = Zend_Controller_Action_HelperBroker::getStaticHelper('Hash')->randomString(32);

                if ($chave) {
                    $ModelClientes->update(array('chave' => $chave), "id =" . $row['id']);
                }

                $assunto = "Requisição de nova senha";

                // Cria a mensagem
                $url = "http://" . $_SERVER['HTTP_HOST'] . "/minha-conta/redefinir-senha/chave/" . $chave . "/id/" . $row['id'];


                $array = array('nome' => $row['nome1'], 'url' => $url);

                Zend_Controller_Action_HelperBroker::getStaticHelper('Emails')->Emails('', $email, $assunto, $array, false, 'emails/requerersenha.phtml');

                $this->_helper->FlashMessenger->addMessage(array('sucesso' => 'Um email foi lhe enviado com as proxímas instruções! Obrigado'));

                //Redireciona o usuário para a pagina de login
                $this->_redirect("/minha-conta/login");
            } else {
                // Armazena o erro
                $this->_helper->FlashMessenger->addMessage(array('erro' => 'E-mail inválido!'));

                // Redireciona o usuário para a pagina de login
                $this->_redirect("/minha-conta/login");
            }
        }
    }

    public function logoutAction() {
        // Desabilita o layout
        $this->_helper->layout->disableLayout();
        $this->_helper->viewRenderer->setNoRender(TRUE);

        // Cria a sessão da empresa
        $login = new Zend_Session_Namespace("login");

        $login->logado = FALSE;
        Zend_Session::namespaceUnset("login");

        // Redireciona o usuário para a pagina anterior
        $this->_redirect('/');
    }

    public function contatoAction() {
        $this->_helper->layout()->setLayout('area-cliente');
        $login = new Zend_Session_Namespace("login");
        $ip = $_SERVER['REMOTE_ADDR'];
        $ModelVendedor = new Admin_Model_Usuarios();
        $ModelContatos = new Admin_Model_Contatos();
        $ModelClientes = new Admin_Model_Clientes();
        $dados_vendedor = $ModelVendedor->GetVendedores(1);
        if ($this->_request->isPost()) {
            $data = $this->_request->getPost();
            $Dados_vendedor = $ModelVendedor->GetDados($data['vendedor']);
            $Dados_cliente = $ModelClientes->GetDados($login->id);

            $data['cliente'] = $login->id;
            $data['ip'] = $ip;
            $data['data_contato'] = date('Y-m-d H:i:s');

            $ModelContatos->insert($data);

            if (!empty($Dados_vendedor['email'])) {
                $assunto = "Comercialização | Schoeler Suinos - " . $data['assunto'];
                $dados_mensagem = array(
                    'vendedor' => $Dados_vendedor['nome'],
                    'cliente' => $Dados_cliente['nome1'],
                    'mensagem' => $data['mensagem'],
                    'ip' => $ip,
                    'data_contato' => date('d/m/Y H:i:s')
                );
                Zend_Controller_Action_HelperBroker::getStaticHelper('Emails')->Emails('', $Dados_vendedor['email'], $assunto, $dados_mensagem, false, 'emails/contato.phtml');
            }


            $this->_helper->FlashMessenger->addMessage(array('sucesso' => 'Sua Mensagem foi enviada, retornaremos em breve!'));
            $this->_redirect($_SERVER[HTTP_REFERER]);
        }
        $this->view->vendedores = $dados_vendedor;
    }

    public function meusDadosAction() {
        $this->_helper->layout()->setLayout('area-cliente');
        $login = new Zend_Session_Namespace("login");
        $ModelClientes = new Admin_Model_Clientes();

        if ($this->_request->isPost()) {
            $data = $this->_request->getPost();

            if ($data) {
                $ModelClientes->insert($data);
                $this->_helper->FlashMessenger->addMessage(array('sucesso' => 'Editado com sucesso'));
                $this->redirect('/minha-conta/');
            }
        }
        $result = $ModelClientes->GetDados($login->id);
        $this->view->dados = $result;
    }

    public function meusEnderecosAction() {
        $this->_helper->layout()->setLayout('area-cliente');
        $login = new Zend_Session_Namespace("login");
        $ModelEnderecos = new Admin_Model_ClienteEnderecos();

        $result = $ModelEnderecos->GetEnderecos($login->id);
        $this->view->enderecos = $result;
    }

    public function agendaAction() {
        $this->_helper->layout()->setLayout('area-cliente');
        $login = new Zend_Session_Namespace("login");

        setlocale(LC_ALL, 'pt_BR', 'pt_BR.utf-8', 'pt_BR.utf-8', 'portuguese');
        date_default_timezone_set('America/Sao_Paulo');

        $data = $this->_getParam('data', date('Y-m-d'));

        if (!$data) {
            $data = date('Y-m-d');
        }

        $date = new Zend_Date($data, 'yyyy-MM-dd');
        $ano = $date->get('yyyy');

        $ModelNegociacao = new Admin_Model_NegociacaoPropostas();

        $lista = $ModelNegociacao->GetNegociacoes($login->id, 3, FALSE, TRUE);

        foreach ($lista as $row) {
            $dados1 = explode('-', $row['data_entrega']);
            $dados2 = explode(' ', $dados1[2]);
            $mes_dia = '-' . $dados1[1] . '-' . $dados2[0];
            $dia_agenda[] = $ano . $mes_dia;
        }

        if ($dia_agenda) {
            foreach ($dia_agenda as $data_agendamento) {
                $dias[$data_agendamento] = $ModelNegociacao->GetAgenda($data_agendamento, $login->id);
            }
        }

        $this->view->agendamentos = $dias;
        $this->view->data = $data;
        $this->view->eventos = isset($dias[$data]) ? (array) $dias[$data] : array();
        $this->view->hoje = utf8_encode(strftime('%A, %d de %B de %Y', strtotime('today')));
    }

    public function adicionarEnderecoAction() {
        $this->_helper->layout()->setLayout('area-cliente');
        $ModelEnderecos = new Admin_Model_ClienteEnderecos();
        $login = new Zend_Session_Namespace("login");
        if ($this->_request->isPost()) {
            $data = $this->_request->getPost();

            if ($data) {
                $data['cliente'] = $login->id;
                $data['data_cadastro'] = date('Y-m-d H:i:s');

                $ModelEnderecos->insert($data);
                $this->_helper->FlashMessenger->addMessage(array('sucesso' => 'Endereço incluido com sucesso!'));
                $this->redirect('/minha-conta/meus-enderecos');
            }
        }
    }

    public function editaEnderecoAction() {
        $this->_helper->layout()->setLayout('area-cliente');
        $login = new Zend_Session_Namespace("login");
        $endereco = $this->_request->getParam('endereco');
        $ModelEnderecos = new Admin_Model_ClienteEnderecos();
        $result = $ModelEnderecos->GetEndereco($endereco, $login->id);

        if ($result['cliente'] != $login->id) {
            $this->_helper->FlashMessenger->addMessage(array('erro' => 'Ação não permitida!'));
            $this->redirect('/minha-conta/meus-enderecos');
        }

        if ($this->_request->isPost()) {
            $data = $this->_request->getPost();

            if ($data) {
                $data['cliente'] = $login->id;

                $ModelEnderecos->insert($data);
                $this->_helper->FlashMessenger->addMessage(array('sucesso' => 'Endereço editado com sucesso!'));
                $this->redirect('/minha-conta/meus-enderecos');
            }
        }
        $this->view->endereco = $result;
    }

    public function excluirEnderecoAction() {

        $login = new Zend_Session_Namespace("login");
        $endereco = $this->_request->getParam('endereco');
        $ModelEnderecos = new Admin_Model_ClienteEnderecos();
        $cliente = $login->id;
        $ModelEnderecos->delete("id = '" . $endereco . "' AND cliente = '" . $cliente . "'");

        $this->_helper->FlashMessenger->addMessage(array('sucesso' => 'Endereço excluido com sucesso!'));
        $this->redirect('/minha-conta/meus-enderecos');
    }

    public function comprovanteBaixarAction() {
        $this->_helper->layout()->disableLayout();
        $login = new Zend_Session_Namespace("login");
        $negociacao = $this->_request->getParam('negociacao');

        if (!$negociacao) {
            $this->_helper->FlashMessenger->addMessage(array('erro' => 'Ação não permitida!'));
            $this->_redirect($_SERVER[HTTP_REFERER]);
        }

        $ModelNegociacao = new Admin_Model_NegociacaoPropostas();
        $dados = $ModelNegociacao->GetNegociacao(false, $login->id, 3, $negociacao);


        if ($dados['status'] != '3') {
            $this->_helper->FlashMessenger->addMessage(array('erro' => 'Ação não permitida!'));
            $this->_redirect($_SERVER[HTTP_REFERER]);
        }

        if ($dados['faturamento'] == '0') {
            $this->_helper->FlashMessenger->addMessage(array('erro' => 'Atenção o comprovante de compra e venda não foi liberado pelo vendedor, aguarde ou entre em contato com o mesmo!'));
            $this->_redirect($_SERVER[HTTP_REFERER]);
        }

        if ($dados['enviada_por'] == 'Cliente' && $dados['fechada_por'] == 'Vendedor') {
            $nome1 = $dados['nome_cliente'];
            $nome2 = $dados['nome_vendedor'];
        } else {
            $nome1 = $dados['nome_vendedor'];
            $nome2 = $dados['nome_cliente'];
        }
        if (!empty($dados['negociacao'])) {
            $param_negociacao = $dados['negociacao'];
        } else {
            $param_negociacao = $dados['id'];
        }

        $nome_arquivo = md5(date('d-m-Y') . $dados['id']);
        $html = '<html><body>';
        $html .= '<table width="789" height="306" border="0" align="center">
            <tr>
                <th height="79" style="border-bottom: 1px solid #333;
                    border-top: 1px solid #333;" scope="col">
                    <a href="http://schoeler.com.br"></a>
                    <table width="774" border="0" >
                        <tr>
                            <th width="152" height="108" scope="col">
                                <h2><a href="http://schoeler.com.br"><img src="/assets/images/schoeler.png" alt="Schoeler Suínos"/></a></h2>
                            </th>
                        <th width="612" scope="col"><table width="417" border="0" align="left">
                    <tr>
                                  <th width="261" height="39" scope="col"><div align="left"><span style="color:#333;font-size:20px;
                                                            font-weight: bold;">Schoeler Su&iacute;nos</span></div></th>
                                </tr>
                                <tr>
                                  <td height="64"><p align="left" style="font-size:12px; color:#666; line-height:1px;">Rodovia PR 151, Km 258, s/n - Machadinho, Piraí do Sul - PR CEP: 84240-000.</p>
                                  <p align="left" style="font-size:12px; color:#666; line-height:1px;">Telefones: (42) 3237-2068 | (42) 3237-3069 | (42) 3237-1058 | (42) 3237-3148.</p></td>
                                </tr>
                              </table>
                          <p align="left" style="color:#333;font-size:20px;
                                                            font-weight: bold;">&nbsp;</p>
                          <p align="left" style="font-size:12px; color:#666; line-height:1px;">&nbsp;</p></th>
                        </tr>
                    </table></th>
            </tr>
            <tr>
                <td height="46"><table width="710" border="0" align="center">
                        <tr>
                            <th width="654" height="116" style="font-size: 16px; text-align:justify;" scope="col"><p>Confirmação de compra  e venda, proposta de Nº: ' . $param_negociacao . '.</p>
                                Proposta ofertada em ' . $this->view->ConvercaoDate('-', $dados['data_proposta'], 4) . ' por: ' . $dados['nome_cliente'] . '</th>
                        </tr>
              </table></td>
            </tr>
            <tr>
                <td><table width="710" border="1" align="center">
            <tr>
                            <td width="170"><strong>Comprador:</strong></td>
                            <td width="535">' . $dados['nome_cliente'] . '</td>
                        </tr>

                        <tr>
                            <td><strong>CNPJ/CPF:</strong></td>
                            <td>' . $dados['doc1_cliente'] . '</td>
                        </tr>

                        <tr>
                            <td><strong>I.E/R.G:</strong></td>
                            <td>' . $dados['doc2_cliente'] . '</td>
                        </tr>

                        <tr>
                            <td><strong>Endereço:</strong></td>
                            <td>' . $dados['rua'] . ' ' . $dados['numero'] . ' ' . $dados['bairro'] . ' - ' . $dados['cidade'] . ' ' . $dados['estado'] . '</td>
                        </tr>
                        <tr>
                            <td><strong>E-mail:</strong></td>
                            <td>' . $dados['email_cliente'] . '</td>
                        </tr>
                        <tr>
                            <td><strong>Telefone:</strong></td>
                            <td>' . $dados['telefone_cliente'] . '</td>
                        </tr>

                    </table>
                  <p>&nbsp;</p>
                  <table width="710" border="1" align="center">
                    <tr>
        <td width="132"><strong>Vendedor:</strong></td>
        <td width="573">' . $dados['nome_vendedor'] . '</td>
      </tr>
      <tr>
        <td><strong>Razão Social:</strong></td>
        <td>' . $dados['nome_faturamento'] . '</td>
      </tr>
      <tr>
        <td><strong>CNPJ/CPF:</strong></td>
        <td>' . $dados['cpf_cnpj'] . '</td>
      </tr>
      <tr>
        <td><strong>Inscrição Estadual:</strong></td>
        <td>' . $dados['rg_ie'] . '</td>
      </tr>
      <tr>
        <td><strong>Endereço:</strong></td>
        <td>Rodovia PR 151, Km 258, s/n - Machadinho, Piraí do Sul - PR.</td>
      </tr>
      <tr>
        <td><strong>E-mail:</strong></td>
        <td>' . $dados['email_vendedor'] . '</td>
      </tr>
      <tr>
        <td><strong>Telefone:</strong></td>
        <td>(42)3232-2068</td>
      </tr>

      <tr>
        <td><strong>Responsável:</strong></td>
        <td>' . $dados['nome_vendedor'] . '</td>
      </tr>

  </table>
              <p>&nbsp;</p></td>
            </tr>
            <tr>
                <td><table width="711" border="0" align="center">
                  <tr>
                    <th width="694" height="21" style="font-size: 16px; text-align:justify;" scope="col"><p>Negociação confirmada por: ' . $dados['nome_vendedor'] . ', aprovada em: ' . $this->view->ConvercaoDate('-', $dados['data_confirmacao'], 4) . '</p></th>
                  </tr>
              </table></td>
            </tr>
            <tr>
              <td><table width="710" border="1" align="center">
                <tr>
                  <td width="134"><strong>Tipo:</strong></td>
                  <td width="575">' . $dados['nome_categoria'] . '</td>
                </tr>
                <tr>
                  <td><strong>Quantidade:</strong></td>
                  <td>' . $dados['quantidade'] . ' Cabeças</td>
                </tr>
                <tr>
                  <td><strong>Preço KG:</strong></td>
                  <td>R$ ' . number_format($dados['preco'], 2, ',', '.') . '</td>
                </tr>
                <tr>
                  <td><strong>Tributação:</strong></td>
                  <td>' . $dados['tributacao'] . '</td>
                </tr>
                <tr>
                  <td><strong>Pagamento:</strong></td>
                  <td><strong>' . $dados['forma_pagamento'] . ' - ' . $dados['condicao_pagamento'] . '</strong></td>
                </tr>

                <tr>
                  <td><strong>Endereço Entrega:</strong></td>
                  <td>' . $dados['rua'] . ' ' . $dados['numero'] . ' ' . $dados['bairro'] . ' - ' . $dados['cidade'] . ' ' . $dados['estado'] . '</td>
                </tr>
                <tr>
                  <td><strong>Data Entrega:</strong></td>
                  <td>' . $this->view->ConvercaoDate('-', $dados['data_entrega'], 2) . '</td>
                </tr>
                <tr>
                  <td><strong>Horário Recebimento:</strong></td>
                  <td><strong>Das ' . $dados['hora_inicial'] . ' às ' . $dados['hora_final'] . '</strong></td>
                </tr>

                <tr>
                  <td><strong>Mensagem:</strong></td>
                  <td>' . $dados['comentario'] . '</td>
                </tr>
              </table></td>
            </tr>
            <tr>
              <td>&nbsp;</td>
            </tr>
        </table>';

        $html .= '</body></html>';
        $data = mb_convert_encoding($html, 'UTF-8', 'UTF-8');
        $this->view->GerarPdf($data, 'confirmacoes', $nome_arquivo);
        exit();
    }

    public function ajaxTermoAction() {
        $this->_helper->layout()->disableLayout();
        $this->_helper->viewRenderer->setNoRender(true);
        $termo = new Zend_Session_Namespace("termo");
        unset($termo->compra);
        $termo->compra = 'yes';
        die('1');
    }

}
