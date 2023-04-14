<?php 

class Servico {
    private int $id;
    private string $nome_cargo;
    private float $preco;

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
	public function getPreco(): float {
		return $this->preco;
	}
	
	/**
	 * @param float $preco 
	 * @return self
	 */
	public function setPreco(float $preco): self {
		$this->preco = $preco;
		return $this;
	}
}


?>