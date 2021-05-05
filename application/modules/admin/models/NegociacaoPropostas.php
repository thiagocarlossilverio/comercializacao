<?php

class Admin_Model_NegociacaoPropostas extends Zend_Db_Table {

    protected $_name = 'negociacao_propostas';
    protected $_primary = 'id';

    public function init() {
        $viewRenderer = Zend_Controller_Action_HelperBroker::getStaticHelper('ViewRenderer');
        $viewRenderer->init();
        $this->view = $viewRenderer->view;
    }

    public function insert(array $data) {
        if (!is_array($data))
            return false;



        $data['data_proposta'] = date('Y-m-d H:i:s');

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

    public function GetAgenda($data = false, $cliente) {
        $sql = $this->select()
                ->setIntegrityCheck(false)
                ->from(array("n" => $this->_name), array("*"))
                ->joinLeft(array("c" => "clientes"), "n.cliente = c.id", array("nome_cliente" => "c.nome1", "email_cliente" => "c.email"))
                ->joinLeft(array("p" => "produtos"), "n.produto = p.id", array("nome_produto" => "p.nome"))
                ->joinLeft(array("pc" => "produto_categorias"), "p.categoria = pc.id", array("nome_categoria" => "pc.nome"))
                ->where("DATE(n.data_entrega)= ?", $data)
                ->where("n.cliente= ?", $cliente)
                ->where("n.negociacao= 0")
                ->order("n.id DESC")
                ->group("n.id");

        if ($agendamentos = $this->fetchAll($sql)) {
            foreach ($agendamentos as $row) {
                $entregas[] = 'Negociação Nº: ' . $row['id'] . ' - ' . $row['nome_produto'] . ' ' . $row['nome_categoria'];
            }
            return $entregas;
        } else {
            return FALSE;
        }
    }

    public function VerificaNegociacao($produto, $cliente, $status) {

        $sql = $this->select()
                ->setIntegrityCheck(false)
                ->from(array("n" => $this->_name), array("*"))
                ->joinLeft(array("p" => "produtos"), "n.produto = p.id", array("nome_item" => "p.nome"))
                ->where('n.produto = ?', $produto)
                ->where('n.cliente = ?', $cliente);


        if ($status == 2 || $status == 1) {

            $sql->where('n.status > ?', 0)
                    ->where('n.status < ?', 3);
        } else {
            $sql->where('n.status = ?', $status);
        }

        if ($result = $this->fetchRow($sql)) {
            return $result->toArray();
        } else {
            return FALSE;
        }
    }

    public function GetNegociacoes($cliente = false, $status = false, $vendedor = false, $agrupado = false) {
        $sql = $this->select()
                ->setIntegrityCheck(false)
                ->from(array("n" => $this->_name), array("*"))
                ->joinLeft(array("c" => "clientes"), "n.cliente = c.id", array("nome_cliente" => "c.nome1"))
                ->joinLeft(array("v" => "usuarios"), "n.vendedor = v.id", array("nome_vendedor" => "v.nome"))
                ->joinLeft(array("p" => "produtos"), "n.produto = p.id", array("nome_item" => "p.nome"))
                ->joinLeft(array("pc" => "produto_categorias"), "p.categoria = pc.id", array("nome_categoria" => "pc.nome"))
                ->joinLeft(array("cp" => "condicao_pagamento"), "n.condicao_pagamento = cp.id", array("condicao_pagamento" => "cp.nome"))
                ->joinLeft(array("fp" => "forma_pagamento"), "n.forma_pagamento = fp.id", array("forma_pagamento" => "fp.nome"))
                //->group('n.')
                ->order("n.id DESC");

        if ($cliente) {
            $sql->where('n.cliente = ?', $cliente);
        }
        if ($status) {
            if ($status == 1 || $status == 2) {
                $sql->where('n.status > ?', 0)
                        ->where('n.status < ?', 3);
            } else {
                $sql->where('n.status = ?', $status);
            }
        }
        if ($vendedor) {
            $sql->where('n.vendedor = ?', $vendedor);
        }

        if ($agrupado) {
            $sql->where('n.negociacao = ?', 0);
        }

        if ($result = $this->fetchAll($sql)) {
            return $result->toArray();
        } else {
            return FALSE;
        }
    }

    public function GetAllNegociacao($negociacao = false, $cliente = false, $status = false) {
        $sql = $this->select()
                ->setIntegrityCheck(false)
                ->from(array("n" => $this->_name), array("*"))
                ->joinLeft(array("c" => "clientes"), "n.cliente = c.id", array("nome_cliente" => "c.nome1"))
                ->joinLeft(array("e" => "cliente_enderecos"), "n.endereco = e.id", array("rua", "numero", "bairro", "cidade", "estado"))
                ->joinLeft(array("v" => "usuarios"), "n.vendedor = v.id", array("nome_vendedor" => "v.nome"))
                ->joinLeft(array("p" => "produtos"), "n.produto = p.id", array("nome_item" => "p.nome"))
                ->joinLeft(array("pc" => "produto_categorias"), "p.categoria = pc.id", array("nome_categoria" => "pc.nome"))
                ->joinLeft(array("cp" => "condicao_pagamento"), "n.condicao_pagamento = cp.id", array("condicao_pagamento" => "cp.nome", "idcondicao_pagamento" => "cp.id"))
                ->joinLeft(array("fp" => "forma_pagamento"), "n.forma_pagamento = fp.id", array("forma_pagamento" => "fp.nome", "idforma_pagamento" => "fp.id"))
                ->joinLeft(array("df" => "dados_faturamento"), "n.faturamento = df.id", array("cpf_cnpj" => "df.doc1", "rg_ie" => "df.doc2", "nome_faturamento" => "df.nome"));

        if ($negociacao) {
            $sql->where("n.id = '$negociacao' OR n.negociacao = '$negociacao'");
        }

        if ($cliente) {
            $sql->where('n.cliente = ?', $cliente);
        }

        if ($status) {
            $sql->where('n.status = ?', $status);
        }
        $sql->order("n.id DESC");
        if ($result = $this->fetchAll($sql)) {
            return $result->toArray();
        } else {
            return FALSE;
        }
    }

    public function GetNegociacao($negociacao = false, $cliente = false, $status = false, $agrupado_negociacao = false) {
        $sql = $this->select()
                ->setIntegrityCheck(false)
                ->from(array("n" => $this->_name), array("*"))
                ->joinLeft(array("c" => "clientes"), "n.cliente = c.id", array("nome_cliente" => "c.nome1", "email_cliente" => "c.email", "telefone_cliente" => "c.telefone", "doc1_cliente" => "c.doc1", "doc2_cliente" => "c.doc2"))
                ->joinLeft(array("e" => "cliente_enderecos"), "n.endereco = e.id", array("e.rua", "e.numero", "e.bairro", "e.cidade", "e.estado", "e.cep"))
                ->joinLeft(array("v" => "usuarios"), "n.vendedor = v.id", array("nome_vendedor" => "v.nome", "email_vendedor" => "v.email"))
                ->joinLeft(array("p" => "produtos"), "n.produto = p.id", array("nome_item" => "p.nome"))
                ->joinLeft(array("pc" => "produto_categorias"), "p.categoria = pc.id", array("nome_categoria" => "pc.nome"))
                ->joinLeft(array("cp" => "condicao_pagamento"), "n.condicao_pagamento = cp.id", array("condicao_pagamento" => "cp.nome"))
                ->joinLeft(array("fp" => "forma_pagamento"), "n.forma_pagamento = fp.id", array("forma_pagamento" => "fp.nome"))
                ->joinLeft(array("df" => "dados_faturamento"), "n.faturamento = df.id", array("cpf_cnpj" => "df.doc1", "rg_ie" => "df.doc2", "nome_faturamento" => "df.nome"));

        if ($negociacao) {
            $sql->where('n.id = ?', $negociacao);
        }

        if ($cliente) {
            $sql->where('n.cliente = ?', $cliente);
        }

        if ($status) {
            $sql->where('n.status = ?', $status);
        }

        if ($agrupado_negociacao) {
            $sql->where("n.negociacao = '$agrupado_negociacao' OR n.id = '$agrupado_negociacao'");
        }

        $sql->order("n.id DESC");

        if ($result = $this->fetchRow($sql)) {
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
            if (!empty($result['data_entrega'])) {
                $result['data_entrega'] = $this->view->ConvercaoDate('-', $result['data_entrega'], 2);
            }
            return $result->toArray();
        }
    }

    public function VerificaFaturamento($faturamento) {
        $sql = $this->select()
                ->where("faturamento = ?", $faturamento);
        if ($result = $this->fetchRow($sql)) {
            return TRUE;
        } else {
            return FALSE;
        }
    }

    public function PopulateProposta($negociacao) {
        $sql = $this->select()
                ->where("negociacao = '$negociacao' OR id = '$negociacao'")
                ->order("id DESC");

        if ($result = $this->fetchRow($sql)) {
            if (!empty($result['data_entrega'])) {
                $result['data_entrega'] = $this->view->ConvercaoDate('-', $result['data_entrega'], 2);
            }
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

    public function geraGraficoMes() {
        $db = Zend_Registry::get("db");
        $select = "SELECT MONTH(n.data_proposta) as mes, COUNT(1) AS total_venda FROM negociacao_propostas AS n  where YEAR(n.data_proposta) = YEAR(now()) And n.`status`=3  And n.`negociacao`=0 GROUP BY mes;";
        $result = $db->query($select);

        $cargas = $result->fetchAll();
        return $cargas;
    }

}
