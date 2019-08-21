package com.connie.EcommerceStore.services;

import java.util.List;
import java.util.Optional;
import java.util.OptionalDouble;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.connie.EcommerceStore.models.Product;
import com.connie.EcommerceStore.models.Review;
import com.connie.EcommerceStore.respositories.ProductRepository;


//@Transactional
//
//@PersistenceContext
////



@Service
public class ProductService {
	private final ProductRepository productRepository;
	
	public ProductService(ProductRepository productRepository) {
		this.productRepository  = productRepository;
	}
//	protected EntityManager entityManager;
	//other methods for saving,updatind,deleting etc
	


//	public void updateRating(Long id) {
		
//	    Session session =(Session)entityManager.getDelegate();
//
//	    List<Review> reviews =productRepository.findOne(id).getReviews();
//	    OptionalDouble rating = reviews.stream().mapToInt(a -> a.getRating()).average();
//	    String hql = "update Product set rating = '"+Math.round(rating.getAsDouble())+"' where id = '"+id+"'";
//	    //UPDATE `test_spring`.`product` SET `rating`='2' WHERE `id`='2';
//	    Query query = session.createQuery(hql);
//	    System.out.println("*");
//	    System.out.println("*");
////	    System.out.println("query is "+query.getQueryString());
//	    System.out.println("*");
//	    System.out.println("*");
//	    query.executeUpdate();
//		return productRepository.save(id);
//	}
		
		
   
//	
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
	
	public List<Product> findProductByCategory(@Param("category") String category) {
		return productRepository.findByCategory(category); 
	}
	
	
	
//	public  Product findProductByCategory(String category) {
//		Optional<Product> optionalProduct= productRepository.findByCategory(category); 
//		if (optionalProduct.isPresent()) {
//			return optionalProduct.get(); 
//		}
//		else {
//			return null; 
//		}
//	}
	
    public void deleteProduct(long id) {
    	productRepository.deleteById(id);
    }

	public Product updateProduct(Product s){
			return  productRepository.save(s);  
	}
    public Product updateRating(Product s) {
    	return productRepository.save(s);
    }
	public List<Product>  getAvgRatingforAllProduct() {
		return productRepository.getAvgRatingforAll(); 
	}


}