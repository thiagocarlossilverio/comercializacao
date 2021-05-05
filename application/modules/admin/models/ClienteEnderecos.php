<?php

class Admin_Model_ClienteEnderecos extends Zend_Db_Table {

    protected $_name = 'cliente_enderecos';
    protected $_primary = 'id';

    public function init() {
        $viewRenderer = Zend_Controller_Action_HelperBroker::getStaticHelper('ViewRenderer');
        $viewRenderer->init();
        $this->view = $viewRenderer->view;
    }

    public function insert(array $data) {

        if (!is_array($data)) {
            return false;
        }

        if (is_numeric($data['id'])) {
            $this->update($data, "id = " . $data['id']);
            return $data['id'];
        }

        $data['data_cadastro'] = date('Y-m-d H:i:s');

        if (is_numeric($data['id'])) {
            $this->update($data, "id = " . $data['id']);
            return $data['id'];
        }

        unset($data['id']);
        $info = $this->info();
        $data_insert = array_intersect_key($data, $info['metadata']);
        $id = parent::insert($data_insert);
        return $id;
    }

    public function Dados() {
        $sql = $this->select();
        if ($result = $this->fetchRow($sql)) {
            return $result;
        }
    }

    public function GetDados($id) {
        $sql = $this->select()
                ->where("id = ?", $id);

        if ($result = $this->fetchRow($sql)) {
            $dados = $result->toArray();

            return $dados;
        }
    }

    public function GetEnderecos($cliente) {
        $sql = $this->select()
                ->where("cliente = ?", $cliente);

        if ($result = $this->fetchAll($sql)) {
            return $result->toArray();
        }
    }

    public function GetEndereco($id, $cliente) {
        $sql = $this->select()
                ->where("id = ?", $id)
                ->where("cliente = ?", $cliente);

        if ($result = $this->fetchRow($sql)) {
            return $result->toArray();
        }
    }

    public function update(array $data, $where) {

        $info = $this->info();
        $data_insert = array_intersect_key($data, $info['metadata']);

        parent::update($data_insert, $where);
    }

    public function Lista($cliente = null) {
        $sql = $this->select()
                ->setIntegrityCheck(false)
                ->from(array("e" => $this->_name))
                ->where('e.cliente = ?', $cliente)
                ->order('id DESC');

        if ($result = $this->fetchAll($sql)) {
            return $result->toArray();
        }
    }

    public function delete($where) {

        return parent::delete($where);
    }

}
