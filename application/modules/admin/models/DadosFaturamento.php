<?phpclass Admin_Model_DadosFaturamento extends Zend_Db_Table {    protected $_name = 'dados_faturamento';    protected $_primary = 'id';    public $_view;    public function init() {        $viewRenderer = Zend_Controller_Action_HelperBroker::getStaticHelper('ViewRenderer');        $viewRenderer->init();        $this->_view = $viewRenderer->view; // Atribuo os Helper de Visão para  $this->view    }    public function GetDados($id) {        $sql = $this->select()->where("id = ?", $id);        if ($result = $this->fetchRow($sql)) {            return $result->toArray();        }    }    public function insert(array $data) {        // Verificações INICIAIS Se o $DATA não for um Array saio da função.        if (!is_array($data)) {            return false;        }        if (is_numeric($data['id'])) {            $this->update($data, "id = " . $data['id']);            return $data['id'];        }        unset($data['id']);        $info = $this->info();        $data_insert = array_intersect_key($data, $info['metadata']);        parent::insert($data_insert);    }    public function Lista() {        $sql = $this->select()                ->setIntegrityCheck(false)                ->from(array("d" => $this->_name))                ->order('d.id');        if ($result = $this->fetchAll($sql)) {            return $result->toArray();        } else {            return FALSE;        }    }    public function Getfaturamento() {        $sql = $this->select()                ->setIntegrityCheck(false)                ->from(array("d" => $this->_name))                ->where("d.ativo = ?", 1)                ->order('d.nome');        if ($result = $this->fetchAll($sql)) {            return $result->toArray();        } else {            return FALSE;        }    }    public function delete($where) {        return parent::delete($where);    }}