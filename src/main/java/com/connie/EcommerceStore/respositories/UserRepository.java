package com.connie.EcommerceStore.respositories;

import org.springframework.data.repository.CrudRepository;

import com.connie.EcommerceStore.models.User;

public interface UserRepository extends CrudRepository <User, Long> {

	User findByEmail(String email);

}


