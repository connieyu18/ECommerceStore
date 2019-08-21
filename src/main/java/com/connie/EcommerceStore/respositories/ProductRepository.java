package com.connie.EcommerceStore.respositories;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.connie.EcommerceStore.models.Product;

@Repository
public interface ProductRepository extends CrudRepository <Product, Long>  {

//	@Query(value="SELECT * FROM products WHERE category'flower'")
//	List<Product> findFlowerProd();
	
	
//    @Query(value="SELECT * from products", nativeQuery=true)
//    List<Object[]> findAllDojosNamesWithId2();

	Optional<Product> findByName(String name);


    @Query(value="SELECT * FROM products WHERE category= :category", nativeQuery=true)
    List<Product> findByCategory(@Param("category") String category); 


    @Query(value="SELECT products.id, products.name, products.description, products.price, products.category,products.picture_url, products.created_at,  products.updated_at,ROUND(AVG(reviews.rating),0) AS avgRatings FROM products LEFT JOIN reviews ON products.id = reviews.product_id GROUP BY name, description, price, products.id, products.category,  products.created_at,products.updated_at, products.picture_url", nativeQuery=true)
//    List<Product> getAvgRatingforAllProduct();
    List<Product> getAvgRatingforAll(); 
	
    
}
