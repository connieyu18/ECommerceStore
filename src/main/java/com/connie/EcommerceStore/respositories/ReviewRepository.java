package com.connie.EcommerceStore.respositories;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.connie.EcommerceStore.models.Review;


@Repository
public interface ReviewRepository extends CrudRepository <Review, Long>  {

    @Query(value="SELECT ROUND(AVG(rating),0) FROM reviews WHERE product_id=?1 ", nativeQuery=true)
    Integer getAvgRatingWhereProductId(Long id);
    
    
    @Query(value="SELECT product_id, ROUND(AVG(rating),0) AS avgStarRatings FROM reviews GROUP BY product_id", nativeQuery=true)
    List<Review> getAllRating(); 

}
