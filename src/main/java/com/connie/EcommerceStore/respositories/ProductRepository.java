package com.connie.EcommerceStore.respositories;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.connie.EcommerceStore.models.Product;

@Repository
public interface ProductRepository extends CrudRepository <Product, Long>  {

//	@Query(value="SELECT * FROM products WHERE category'flower'")
//	List<Product> findFlowerProd();
	
	
//    @Query(value="SELECT * from products", nativeQuery=true)
//    List<Object[]> findAllDojosNamesWithId2();

	Optional<Product> findByName(String name);

	Optional<Product> findByCategory(String category);
    
}
