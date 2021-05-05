<?phpclass Admin_FaturamentoController extends Zend_Controller_Action {    public function indexAction() {        $Modelfaturamento = new Admin_Model_DadosFaturamento();        $result = $Modelfaturamento->Lista();        $this->view->dados = $result;    }    public function adicionarAction() {        $form = new TCS_Form_FormFaturamento();        $ModelFaturamento = new Admin_Model_DadosFaturamento();        $data = $this->_request->getPost();        if ($this->_request->isPost() && $form->isValid($data)) {            $ModelFaturamento->insert($data);            //Adiciona a mensagem de sucesso            $this->_helper->FlashMessenger->addMessage(array('sucesso' => 'Adicionado com sucesso'));            $this->redirect($_SERVER['HTTP_REFERER']);        }        $this->view->form = $form;        $this->view->controller = $this->_request->getControllerName();    }    public function editarAction() {        $id = (int) $this->_request->getParam('id');        $form = new TCS_Form_FormFaturamento();        $ModelFaturamento = new Admin_Model_DadosFaturamento();        if ($id) {            $values = $ModelFaturamento->GetDados($id);            $form->populate($values);            if ($this->_request->isPost() && $form->isValid($_POST)) {                $data = $this->_request->getPost();                unset($data['Salvar']);                $ModelFaturamento->insert($data);                $this->_helper->FlashMessenger->addMessage(array('sucesso' => 'Editado com sucesso'));                $this->redirect($_SERVER['HTTP_REFERER']);            }            $this->view->form = $form;            $this->view->controller = $this->_request->getControllerName();            $this->render('adicionar');        } else {            $this->redirect($_SERVER['HTTP_REFERER']);        }    }    public function excluirAction() {        $id = (int) $this->_request->getParam('id');        $ModelFaturamento = new Admin_Model_DadosFaturamento();        $ModelPropostas = new Admin_Model_NegociacaoPropostas();        $result = $ModelPropostas->VerificaFaturamento($id);        if ($result) {            //Adiciona a mensagem de sucesso            $this->_helper->FlashMessenger->addMessage(array('erro' => 'Não foi possível excluir, O mesmo se encontra em uso!'));            $this->_redirect('admin/faturamento');        }        $ModelFaturamento->delete("id = " . $id);        //Adiciona a mensagem de sucesso        $this->_helper->FlashMessenger->addMessage(array('sucesso' => 'Excluido com sucesso'));        $this->_redirect('admin/faturamento');    }}