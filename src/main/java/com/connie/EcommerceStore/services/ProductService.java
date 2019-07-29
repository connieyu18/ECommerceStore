package com.connie.EcommerceStore.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.connie.EcommerceStore.models.Product;
import com.connie.EcommerceStore.respositories.ProductRepository;

@Service

public class ProductService {
	private final ProductRepository productRepository;
	
	public ProductService(ProductRepository productRepository) {
		this.productRepository  = productRepository;
	}
	
	public Iterable<Product> getAllProducts() {
	    return productRepository.findAll();
	}
	
	
	public  Product findProduct(Long id) {
		Optional<Product> optionalProduct= productRepository.findById(id); 
		if (optionalProduct.isPresent()) {
			return optionalProduct.get(); 
		}
		else {
			return null; 
		}
	}
	

    public Product addProduct(Product product) {
        return productRepository.save(product);
    }
//
    
	public  Product findProductByName(String name) {
		Optional<Product> optionalProduct= productRepository.findByName(name); 
		if (optionalProduct.isPresent()) {
			return optionalProduct.get(); 
		}
		else {
			return null; 
		}
	}
	public  Product findProductByCategory(String category) {
		Optional<Product> optionalProduct= productRepository.findByCategory(category); 
		if (optionalProduct.isPresent()) {
			return optionalProduct.get(); 
		}
		else {
			return null; 
		}
	}
	
    public void deleteProduct(long id) {
    	productRepository.deleteById(id);
    }

	public Product updateProduct(Product s){
			return  productRepository.save(s);  
	}

}