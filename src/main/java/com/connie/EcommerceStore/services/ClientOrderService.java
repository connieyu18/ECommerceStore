package com.connie.EcommerceStore.services;

import java.util.List;

import org.springframework.stereotype.Service;

import com.connie.EcommerceStore.models.ClientOrder;
import com.connie.EcommerceStore.respositories.ClientOrderRepository;

@Service
public class ClientOrderService {
	private final ClientOrderRepository clientOrderRepository;
    // clientOrderRepository constructor injection
	public ClientOrderService(ClientOrderRepository clientOrderRepository){
		this.clientOrderRepository = clientOrderRepository;
	}
    public ClientOrder save(ClientOrder clientOrder) {
        return clientOrderRepository.save(clientOrder);
    }
    public ClientOrder findById(long id) {
    	return clientOrderRepository.findById(id);
    }
    public void deleteClientOrder(long id) {
    	clientOrderRepository.deleteById(id);
    }
    public List<ClientOrder> findActive(){
    	return clientOrderRepository.findByCheckedOut(false);
    }
}