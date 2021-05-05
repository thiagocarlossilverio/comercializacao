<?php

class Admin_Model_Negociacoes extends Zend_Db_Table {

    protected $_name = 'negociacoes';
    protected $_primary = 'id';

    public function init() {
        $viewRenderer = Zend_Controller_Action_HelperBroker::getStaticHelper('ViewRenderer');
        $viewRenderer->init();
        $this->view = $viewRenderer->view;
    }

    public function insert(array $data) {
        if (!is_array($data))
            return false;

        if (is_numeric($data['id'])) {
            $this->update($data, "id = " . $data['id']);
            return $data['id'];
        }

        $data['data_proposta'] = date('Y-m-d H:i:s');
        if (is_numeric($data['id'])) {
            $this->update($data, "id = " . $data['id']);
            return $data['id'];
        }

        unset($data['id']);
        $info = $this->info();
        $data_insert = array_intersect_key($data, $info['metadata']);
        parent::insert($data_insert);
    }

    public function Dados() {
        $sql = $this->select();
        if ($result = $this->fetchRow($sql)) {
            return $result;
        }
    }

    public function Getproposta($id) {
        $sql = $this->select()
                ->setIntegrityCheck(false)
                ->from(array("n" => $this->_name), array("*"))
                ->joinLeft(array("c" => "clientes"), "n.cliente = c.id", array("nome_cliente" => "c.nome1", "email_cliente" => "c.email"))
                ->joinLeft(array("p" => "produtos"), "n.produto = p.id", array("nome_produto" => "p.nome"))
                ->joinLeft(array("pc" => "produto_categorias"), "p.categoria = pc.id", array("nome_categoria" => "pc.nome"))
                ->where("n.id = ?", $id)
                ->order("n.id");

        if ($result = $this->fetchRow($sql)) {
            return $result->toArray();
        } else {
            return FALSE;
        }
    }

    public function GetNegociacao() {
        $sql = $this->select()
                ->setIntegrityCheck(false)
                ->from(array("p" => $this->_name), array("*"))
                ->joinLeft(array("c" => "clientes"), "p.cliente = c.id", array("nome_cliente" => "c.nome1"))
                ->joinLeft(array("v" => "produtos"), "p.produto = v.id", array("nome_item" => "v.nome"))
                ->order("p.id");

        if ($result = $this->fetchAll($sql)) {
            return $result->toArray();
        } else {
            return FALSE;
        }
    }

    public function GetpropostasCliente($cliente) {
        $sql = $this->select()
                ->setIntegrityCheck(false)
                ->from(array("p" => $this->_name), array("*"))
                ->joinLeft(array("v" => "produtos"), "p.produto = v.id", array("nome_item" => "v.nome"))
                ->where("p.cliente = ?", $cliente)
                ->order("p.id");


        if ($result = $this->fetchAll($sql)) {
            return $result->toArray();
        } else {
            return FALSE;
        }
    }

    public function GetCliente($cliente) {
        $sql = $this->select()
                ->where("cliente = ?", $cliente);
        if ($result = $this->fetchRow($sql)) {
            return $result->toArray();
        }
    }

    public function GetDados($id) {
        $sql = $this->select()->where("id = ?", $id);
        if ($result = $this->fetchRow($sql)) {
            return $result->toArray();
        }
    }

    public function update(array $data, $where) {
        $info = $this->info();
        $data_insert = array_intersect_key($data, $info['metadata']);
        parent::update($data_insert, $where);
    }

    public function BuscarLogin($cliente) {
        $sql = $this->select()
                ->setIntegrityCheck(false)
                ->from(array('p' => $this->_name), array("*"))
                ->where("p.cliente = ?", $cliente);

        if ($busca = $this->fetchRow($sql)) {
            return $busca->toArray();
        } else {
            return false;
        }
    }

    public function Lista($nome = null, $limit = '') {
        $sql = $this->select()
                ->setIntegrityCheck(false)
                ->from(array("c" => $this->_name))
                ->order('c.nome');
        if (!empty($nome)) {
            $sql->where("c.nome REGEXP '$nome'");
        }

        if ($limit != '') {
            $sql->limit($limit);
        }
        return $this->fetchAll($sql);
    }

    public function delete($where) {
        return parent::delete($where);
    }

}
