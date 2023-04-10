<?php 

final Class Cliente extends Pessoa{

    private $data_cadastro;

    public function __construct(){
        parent::__construct();
    }

	/**
	 * @return mixed
	 */
	public function getData_cadastro() {
		return $this->data_cadastro;
	}
	
	/**
	 * @param mixed $data_cadastro 
	 * @return self
	 */
	public function setData_cadastro($data_cadastro): self {
		$this->data_cadastro = $data_cadastro;
		return $this;
	}
}

?>