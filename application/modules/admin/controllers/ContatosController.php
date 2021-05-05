<?php

class Admin_ContatosController extends Zend_Controller_Action {

    public function init() {
        $this->view->controller = $this->_request->getControllerName();
        parent::init();
    }

    public function indexAction() {
        $auth = Zend_Auth::getInstance();
        $user = $auth->getIdentity();

        $ModelContatos = new Admin_Model_Contatos();
        $dados = $ModelContatos->lista($user->id);
        $this->view->contatos = $dados;
    }

    public function responderAction() {
        $id = $this->_request->getParam('id');
        $ModelContato = new Admin_Model_Contatos();
        $form = new TCS_Form_FormContato();


        $dados = $ModelContato->Getcontato($id);

        $data = $this->_request->getPost();
        if ($this->_request->isPost() && $form->isValid($data)) {

            $dados = array(
                'resposta' => $data['resposta'],
                'data_resposta' => date('Y-m-d H:i:s')
            );

            $ModelContato->update($dados, "id =" . $data['id']);

            if (!empty($data['email_cliente'])) {
                $conteudo = array('nome' => $data['nome_cliente'], 'email' => $data['email_cliente'], 'resposta' => $data['resposta']);
                $assunto = "Schoeler Suínos - Resposta de sua mensagem";
                Zend_Controller_Action_HelperBroker::getStaticHelper('Emails')->Emails('', $data['email_cliente'], $assunto, $conteudo, false, 'emails/contato.phtml');
            }

            $this->_helper->FlashMessenger->addMessage(array('sucesso' => 'Mensagem enviada com sucesso!'));
            $this->_redirect('admin/contatos');
        }
        $form->populate($dados);
        $this->view->form = $form;
        $this->view->dados = $dados;
    }

}
