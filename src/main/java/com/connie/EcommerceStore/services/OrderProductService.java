package com.connie.EcommerceStore.services;

import org.springframework.stereotype.Service;

import com.connie.EcommerceStore.models.OrderProduct;
import com.connie.EcommerceStore.respositories.OrderProductRepository;

@Service
public class OrderProductService {
	private final OrderProductRepository orderProductRepository;
    // productRepository constructor injection
	public OrderProductService(OrderProductRepository orderProductRepository){
		this.orderProductRepository = orderProductRepository;
	}
    public OrderProduct save(OrderProduct orderProduct) {
        return orderProductRepository.save(orderProduct);
    }
    public OrderProduct findById(long id){
        return orderProductRepository.findById(id);
    }
    
    
    public void deleteOrderProduct(long id) {
    	orderProductRepository.deleteById(id);
    }
	
}
