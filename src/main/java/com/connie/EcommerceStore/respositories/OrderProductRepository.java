package com.connie.EcommerceStore.respositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.connie.EcommerceStore.models.OrderProduct;



@Repository
public interface OrderProductRepository extends CrudRepository<OrderProduct, Long> {
	OrderProduct findById(long id);
}
