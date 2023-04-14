<?php 

class cargo {

    private int $id;
    private string $nome_cargo;
    private float $salario; 

    public function __construct(){}     
    
    
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
	 * @return string
	 */
	public function getNome_cargo(): string {
		return $this->nome_cargo;
	}
	
	/**
	 * @param string $nome_cargo 
	 * @return self
	 */
	public function setNome_cargo(string $nome_cargo): self {
		$this->nome_cargo = $nome_cargo;
		return $this;
	}

	/**
	 * @return float
	 */
	public function getSalario(): float {
		return $this->salario;
	}
	
	/**
	 * @param float $salario 
	 * @return self
	 */
	public function setSalario(float $salario): self {
		$this->salario = $salario;
		return $this;
	}
}

?>