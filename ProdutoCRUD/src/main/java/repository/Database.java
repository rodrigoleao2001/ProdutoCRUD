package repository;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import model.Produto;

public class Database {

	private static List<Produto> lista = new ArrayList<>();
	private static int id = 1;

	public static void add(Produto produto) {
		produto.setId(id++);
		lista.add(produto);
	}

	public static void remover(int id) {
		Iterator<Produto> it = lista.iterator();
		while (it.hasNext()) {
			Produto produto = it.next();
			if (produto.getId() == id) {
				it.remove();
			}
		}
	}

	public static List<Produto> getProduto() {
		return lista;
	}

	public static Produto buscaProdutoID(int id) {
		for (Produto produto : lista) {
			if (produto.getId() == id) {
				return produto;
			}
		}
		return null;
	}

}
