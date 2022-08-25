package model;

public class Produto {
	
	private String nome;
	private int id;
	private String descricao;
	private double preco;
	private int sku;
	private String caracteristicas;
	
	
	public Produto(String nome, String descricao, double precoProduto, int skuProduto, String caracteristicas) {
		super();
		this.nome = nome;
		this.descricao = descricao;
		this.preco = precoProduto;
		this.sku = skuProduto;
		this.caracteristicas = caracteristicas;
	}


	public String getNome() {
		return nome;
	}


	public int getId() {
		return id;
	}


	public String getDescricao() {
		return descricao;
	}


	public double getPreco() {
		return preco;
	}


	public int getSku() {
		return sku;
	}


	public String getCaracteristicas() {
		return caracteristicas;
	}


	public void setNome(String nome) {
		this.nome = nome;
	}


	public void setId(int id) {
		this.id = id;
	}


	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}


	public void setPreco(double preco) {
		this.preco = preco;
	}


	public void setSku(int sku) {
		this.sku = sku;
	}


	public void setCaracteristicas(String caracteristicas) {
		this.caracteristicas = caracteristicas;
	}
	
	
	

}
