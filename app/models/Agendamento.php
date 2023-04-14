<?php 

class Agendamento {

    private int $id;
    private $horario_atendimento;

    
    private int $id_cliente;
    private int $id_servico;
    private int $id_funcionario;

    public function __construct() {
        $this->horario_atendimento = date('d-m-Y H:i:s');
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
	 * @return mixed
	 */
	public function getHorario_atendimento() {
		return $this->horario_atendimento;
	}
	
	/**
	 * @param mixed $horario_atendimento 
	 * @return self
	 */
	public function setHorario_atendimento($horario_atendimento): self {
		$this->horario_atendimento = $horario_atendimento;
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
}


?>