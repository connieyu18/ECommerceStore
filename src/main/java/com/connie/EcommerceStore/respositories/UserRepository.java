package com.connie.EcommerceStore.respositories;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.connie.EcommerceStore.models.User;

@Repository
public interface UserRepository extends CrudRepository<User, Long> {
	final String FIND_ADMINS_QUERY ="Select * FROM users u JOIN users_roles ur ON u.id = ur.user_id WHERE ur.name = 'ADMIN'";
    
    
	User findByEmail(String email);
    
    @Query(value=FIND_ADMINS_QUERY, nativeQuery=true)
    List<User> findAllAdmin();
   
}


