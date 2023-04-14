<?php 

class Venda {

    private int $id;
    private float $valor_total;
    private $data_venda;


    private int $id_cliente;
    private int $id_servico;
    private int $id_funcionario;
    private int $id_agendamento;

    public function __construct() {
        $this->data_venda = date('d-m-Y H:i:s');
      }



	/**
	 * @return int
	 */
	public function getId(): int {
		return $this->id;
	}
	
	/**
	 * @param int $id 
	 * @return self
	 */
	public function setId(int $id): self {
		$this->id = $id;
		return $this;
	}

	/**
	 * @return float
	 */
	public function getValor_total(): float {
		return $this->valor_total;
	}
	
	/**
	 * @param float $valor_total 
	 * @return self
	 */
	public function setValor_total(float $valor_total): self {
		$this->valor_total = $valor_total;
		return $this;
	}

	/**
	 * @return mixed
	 */
	public function getData_venda() {
		return $this->data_venda;
	}
	
	/**
	 * @param mixed $data_venda 
	 * @return self
	 */
	public function setData_venda($data_venda): self {
		$this->data_venda = $data_venda;
		return $this;
	}

	/**
	 * @return int
	 */
	public function getId_cliente(): int {
		return $this->id_cliente;
	}
	
	/**
	 * @param int $id_cliente 
	 * @return self
	 */
	public function setId_cliente(int $id_cliente): self {
		$this->id_cliente = $id_cliente;
		return $this;
	}

	/**
	 * @return int
	 */
	public function getId_servico(): int {
		return $this->id_servico;
	}
	
	/**
	 * @param int $id_servico 
	 * @return self
	 */
	public function setId_servico(int $id_servico): self {
		$this->id_servico = $id_servico;
		return $this;
	}

	/**
	 * @return int
	 */
	public function getId_funcionario(): int {
		return $this->id_funcionario;
	}
	
	/**
	 * @param int $id_funcionario 
	 * @return self
	 */
	public function setId_funcionario(int $id_funcionario): self {
		$this->id_funcionario = $id_funcionario;
		return $this;
	}

	/**
	 * @return int
	 */
	public function getId_agendamento(): int {
		return $this->id_agendamento;
	}
	
	/**
	 * @param int $id_agendamento 
	 * @return self
	 */
	public function setId_agendamento(int $id_agendamento): self {
		$this->id_agendamento = $id_agendamento;
		return $this;
	}
}


?>