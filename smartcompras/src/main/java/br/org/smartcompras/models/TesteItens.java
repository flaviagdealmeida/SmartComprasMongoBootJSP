package br.org.smartcompras.models;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import br.org.smartcompras.repository.ProdutoMongoRepository;

public class TesteItens {
	
	@Autowired
	static
	ProdutoMongoRepository produtoRepository;
	
@SuppressWarnings("unchecked")
public static void main(String[] args) {
	Produto produto = new Produto();
	String teste = "58bb3ed775bce532002a9593";
	Produto pmr =  produtoRepository.findOne(teste);
	
	
	
	produto.setId("58bb3ed775bce532002a9593");
	produto.setProduto("Teste Novo");
    produto.setImgProduto("img/produtos/brahmalata.jpg");
    produto.setTipoProduto("Bebidas");

    Produto produto2 = new Produto();
	
	produto2.setId("58bb3ed775bce532002a9593");
	produto2.setProduto("Teste Novo 2");
    produto2.setImgProduto("img/produtos/brahmalata.jpg");
    produto2.setTipoProduto("Bebidas");
//	
    
    
    
    
    
    
	List<Produto> cart = new ArrayList<Produto>();
	//cart.add (pmr);
	cart.add (produto2);
	
		
	List<ItensLista> it = new ArrayList<ItensLista>();
	
		it.add(new ItensLista(produto2));
		it.add(new ItensLista(produto));
	
	
		
		Carrinho2 car = new Carrinho2();
		
	//	car.adiciona(produto,1);
		
	
	
	for (Produto produtos : cart) {
		System.out.println(produtos.getProduto());
	}
	
	
	for (ItensLista itens : it) {
		System.out.println(itens.getProduto().getProduto());
	}
//	

	System.out.println(pmr);


}

}
