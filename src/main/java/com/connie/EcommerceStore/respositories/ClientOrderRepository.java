package com.connie.EcommerceStore.respositories;


import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.connie.EcommerceStore.models.ClientOrder;


@Repository
public interface ClientOrderRepository extends CrudRepository<ClientOrder, Long>  {
	ClientOrder findById(long id);
	List<ClientOrder> findByCheckedOut(boolean checkedOUt);
}
