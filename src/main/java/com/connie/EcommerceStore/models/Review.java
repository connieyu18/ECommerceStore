package com.connie.EcommerceStore.models;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.PrePersist;
import javax.persistence.PreUpdate;
import javax.persistence.Table;

@Entity
@Table(name="reviews")
public class Review {
	 	@Id
	    @GeneratedValue(strategy = GenerationType.IDENTITY)
	 	
	    private Long id;
	 
	    private int rating; 
	    
	    private String comment; 
	   
	    
	    @Column(updatable=false)
	    private Date createdAt;
	    private Date updatedAt; 
		
	    @PrePersist
	    protected void onCreate(){
	        this.createdAt = new Date();
	    }
	    @PreUpdate
	    protected void onUpdate(){
	        this.updatedAt = new Date();
	    }
	    
		@ManyToOne(fetch = FetchType.LAZY)
	    @JoinColumn(name="product_id")
	    private Product product; 
	    
		@ManyToOne(fetch = FetchType.LAZY)
	    @JoinColumn(name="user_id")
	    private User user; 
		
	    public Review() {
	    }
		public Review(Long id, int rating, String comment,
				Date createdAt, Date updatedAt,
				Product product, User user) {
			super();
			this.id = id;
			this.rating = rating;
			this.comment = comment;
			this.createdAt = createdAt;
			this.updatedAt = updatedAt;
			this.product = product;
			this.user = user;
		}
		public Long getId() {
			return id;
		}
		public void setId(Long id) {
			this.id = id;
		}
		public int getRating() {
			return rating;
		}
		public void setRating(int rating) {
			this.rating = rating;
		}
		public String getComment() {
			return comment;
		}
		public void setComment(String comment) {
			this.comment = comment;
		}
		public Date getCreatedAt() {
			return createdAt;
		}
		public void setCreatedAt(Date createdAt) {
			this.createdAt = createdAt;
		}
		public Date getUpdatedAt() {
			return updatedAt;
		}
		public void setUpdatedAt(Date updatedAt) {
			this.updatedAt = updatedAt;
		}
		public Product getProduct() {
			return product;
		}
		public void setProduct(Product product) {
			this.product = product;
		}
		public User getUser() {
			return user;
		}
		public void setUser(User user) {
			this.user = user;
		}

	    
	    
		
	    
}
