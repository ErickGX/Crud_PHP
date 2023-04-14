<?php 

Final class Funcionario extends Pessoa {

    private $data_admissao;
    private $id_cargo;

    public function __construct(){
        parent::__construct();
    }

	/**
	 * @return mixed
	 */
	public function getData_admissao() {
		return $this->data_admissao;
	}
	
	/**
	 * @param mixed $data_admissao 
	 * @return self
	 */
	public function setData_admissao($data_admissao): self {
		$this->data_admissao = $data_admissao;
		return $this;
	}

	/**
	 * @return mixed
	 */
	public function getId_cargo() {
		return $this->id_cargo;
	}
	
	/**
	 * @param mixed $id_cargo 
	 * @return self
	 */
	public function setId_cargo($id_cargo): self {
		$this->id_cargo = $id_cargo;
		return $this;
	}
}

?>