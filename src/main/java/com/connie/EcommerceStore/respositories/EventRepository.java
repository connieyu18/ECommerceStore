package com.connie.EcommerceStore.respositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.connie.EcommerceStore.models.Event;
import com.connie.EcommerceStore.models.Product;



@Repository
public interface EventRepository extends CrudRepository <Event, Long>  {

}