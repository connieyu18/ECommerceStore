package com.connie.EcommerceStore.services;

import java.util.List;

import org.springframework.stereotype.Service;

import com.connie.EcommerceStore.models.Review;
import com.connie.EcommerceStore.respositories.ReviewRepository;


@Service
public class ReviewService {
	private final ReviewRepository reviewRepository;
	
	public ReviewService(ReviewRepository reviewRepository) {
		this.reviewRepository  = reviewRepository;
	}
    public Review save(Review review) {
        return reviewRepository.save(review);
    }

	public void deleteReview(Long id) {
		reviewRepository.deleteById(id); 
		
	}
	public Integer getAvgRatingByProduct(Long id) {
		return reviewRepository.getAvgRatingWhereProductId(id); 
		
	}
	public List<Review> getAllRating() {
		return  reviewRepository.getAllRating(); 

	
	}
}
