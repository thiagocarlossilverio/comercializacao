<?php

class Admin_NegociacoesController extends Zend_Controller_Action {

    public function init() {
        $this->view->controller = $this->_request->getControllerName();
        parent::init();
    }

    public function indexAction() {
        $auth = Zend_Auth::getInstance();
        $user = $auth->getIdentity();
        $ModelNegociacoes = new Admin_Model_NegociacaoPropostas();
        $ModelFaturamento = new Admin_Model_DadosFaturamento();
        $dados = $ModelNegociacoes->GetNegociacoes(FALSE, FALSE, $user->id, TRUE);
        $dadosFaturamento = $ModelFaturamento->Getfaturamento();
        $this->view->propostas = $dados;
        $this->view->faturamento = $dadosFaturamento;
    }

    public function liberarAction() {
        $this->getHelper('layout')->disableLayout();
        $negociacao = (int) $this->_request->getParam('negociacao');
        $faturamento = (int) $this->_request->getParam('faturamento');
        $ModelNegociacao = new Admin_Model_NegociacaoPropostas();
        $auth = Zend_Auth::getInstance();
        $user = $auth->getIdentity();
        $idvendedor = $user->id;

        $ModelNegociacao->update(array('faturamento' => $faturamento, 'data_confirmacao' => date('Y-m-d H:i:s')), "id = '" . $negociacao . "' AND vendedor = '" . $idvendedor . "'");
        $ModelNegociacao->update(array('faturamento' => $faturamento, 'data_confirmacao' => date('Y-m-d H:i:s')), "negociacao = '" . $negociacao . "' AND vendedor = '" . $idvendedor . "'");

        $dados_negociacao = $ModelNegociacao->GetNegociacao(FALSE, FALSE, FALSE, $negociacao);

        if (!empty($dados_negociacao['email_cliente'])) {
            $assunto = "Liberação do Comprovante de Compra e Venda da negociação de Nº" . $negociacao;
            Zend_Controller_Action_HelperBroker::getStaticHelper('Emails')->Emails('', $dados_negociacao['email_cliente'], $assunto, $dados_negociacao, false, 'emails/libera-contrato.phtml');
        }

        $this->_helper->FlashMessenger->addMessage(array('sucesso' => 'O comprovante de compra e venda foi liberado para o cliente!'));

        die('sucesso');
    }

    public function aprovarAction() {
        $negociacao = (int) $this->_request->getParam('negociacao');
        $ModelNegociacao = new Admin_Model_NegociacaoPropostas();
        $auth = Zend_Auth::getInstance();
        $user = $auth->getIdentity();
        $idvendedor = $user->id;

        $ModelNegociacao->update(array('status' => 3, 'fechada_por' => 'Vendedor'), "id = '" . $negociacao . "' AND vendedor = '" . $idvendedor . "'");
        $ModelNegociacao->update(array('status' => 3, 'fechada_por' => 'Vendedor'), "negociacao = '" . $negociacao . "' AND vendedor = '" . $idvendedor . "'");

        $dados_negociacao = $ModelNegociacao->GetNegociacao(FALSE, FALSE, FALSE, $negociacao);

        if (!empty($dados_negociacao['email_cliente'])) {
            $assunto = "Aprovação da Negociação de Nº" . $negociacao;
            Zend_Controller_Action_HelperBroker::getStaticHelper('Emails')->Emails('', $dados_negociacao['email_cliente'], $assunto, $dados_negociacao, false, 'emails/aprovacao-proposta.phtml');
        }

        $this->_helper->FlashMessenger->addMessage(array('sucesso' => 'Proposta aprovada com sucesso!'));
        $this->_redirect('admin/negociacoes');
    }

    public function visualizarAction() {
        $negociacao = $this->_request->getParam('negociacao');
        $ModelNegociacao = new Admin_Model_NegociacaoPropostas();
        $dados = $ModelNegociacao->GetAllNegociacao($negociacao);
        $this->view->dados = $dados;
    }

    public function responderAction() {
        $negociacao = $this->_request->getParam('negociacao');
        $ModelPropostas = new Admin_Model_NegociacaoPropostas();
        $form = new TCS_Form_FormNegociacao();
        $form->negociacao->setValue($negociacao);
        $auth = Zend_Auth::getInstance();
        $user = $auth->getIdentity();

        $dados = $ModelPropostas->PopulateProposta($negociacao);
        $data = $this->_request->getPost();

        if ($dados['vendedor'] != $user->id) {
            $this->_helper->FlashMessenger->addMessage(array('erro' => 'Você não pode fazer uma contra proposta para o cliente, apenas o vendedor responsável!'));
            $this->_redirect('admin/negociacoes');
        }

        if ($this->_request->isPost() && $form->isValid($data)) {
            //$data['data_contraproposta'] = date('Y-m-d H:i:s');
            $data['negociacao'] = $negociacao;
            $data['vendedor'] = $dados['vendedor'];
            $data['cliente'] = $dados['cliente'];
            $data['produto'] = $dados['produto'];
            $data['quantidade'] = $dados['quantidade'];
            $data['unidade'] = $dados['unidade'];
            $data['enviada_por'] = 'Vendedor';
            $data['ip'] = $_SERVER['REMOTE_ADDR'];
            $data['data_entrega'] = $this->view->ConvercaoDate('/', $data['data_entrega'], 3);
            unset($data['id']);

            $id = $ModelPropostas->insert($data);
            if ($id) {

                $ModelPropostas->update(array('status' => 2), "id = '" . $negociacao . "' AND vendedor = '" . $user->id . "'");
                $ModelPropostas->update(array('status' => 2), "negociacao = '" . $negociacao . "' AND vendedor = '" . $user->id . "'");

                $dados_negociacao = $ModelPropostas->GetNegociacao(FALSE, FALSE, FALSE, $negociacao);

                if (!empty($dados_negociacao['email_cliente'])) {
                    $assunto = "Nova Proposta referente ao produto: " . $dados_negociacao['nome_item'] . ' - ' . $dados_negociacao['nome_categoria'];
                    Zend_Controller_Action_HelperBroker::getStaticHelper('Emails')->Emails('', $dados_negociacao['email_cliente'], $assunto, $dados_negociacao, false, 'emails/proposta.phtml');
                }
            }

            $this->_helper->FlashMessenger->addMessage(array('sucesso' => 'Contraproposta enviada com sucesso!'));
            $this->_redirect('admin/negociacoes');
        }
        $form->populate($dados);
        $this->view->form = $form;
    }

    public function removerpropostaAction() {
        $id = $this->_request->getParam('id');
        $auth = Zend_Auth::getInstance();
        $user = $auth->getIdentity();
        $ModelNegociacoes = new Admin_Model_NegociacaoPropostas();
        $vendedor = $user->id;

        $result = $ModelNegociacoes->GetDados($id);

        if ($result['status'] == '3') {
            $this->_helper->FlashMessenger->addMessage(array('erro' => 'Não é possível remover a proposta com status fechada!!'));
            $this->_redirect($_SERVER['HTTP_REFERER']);
        }

        $ModelNegociacoes->delete("id = '" . $id . "' AND vendedor = '" . $vendedor . "'");


        //Adiciona a mensagem de sucesso
        $this->_helper->FlashMessenger->addMessage(array('sucesso' => 'A proposta foi removida com sucesso!'));
        $this->_redirect($_SERVER['HTTP_REFERER']);
    }

}
