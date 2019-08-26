package com.connie.EcommerceStore.models;

import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.PrePersist;
import javax.persistence.PreUpdate;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.springframework.beans.factory.annotation.Value;

@Entity
@Table(name = "products")
public class Product {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	@Size(min=1)
	private String name;
	@Size(min = 3)
	private String description;
	
	private String category;
	private Double price;
	@Size(min = 3)
	private String pictureUrl;
	
	@Column(updatable = false)
	private Date createdAt;
	private Date updatedAt;
	


	@PrePersist
	protected void onCreate() {
		this.createdAt = new Date();
	}

	@PreUpdate
	protected void onUpdate() {
		this.updatedAt = new Date();
	}

	@OneToMany(mappedBy = "product", fetch = FetchType.LAZY)
	private List<Event> events;

    @OneToMany(mappedBy = "product", fetch = FetchType.LAZY)
    private List<Review> reviews;
 

	@ManyToMany(fetch = FetchType.LAZY)
	@JoinTable(name = "userProducts", joinColumns = @JoinColumn(name = "product_id"), inverseJoinColumns = @JoinColumn(name = "user_id"))
	private List<User> users;

//		@ManyToMany(fetch = FetchType.LAZY)
//	    @JoinTable(
//	        name = "eventProduct", 
//	        joinColumns = @JoinColumn(name = "event_id"), 
//	        inverseJoinColumns = @JoinColumn(name = "product_id")
//		)
//		private List<Event> events;
//
//		@ManyToOne(fetch = FetchType.LAZY)
//	    @JoinColumn(name="event_id")
//	    private Event event; 
//	    

//	    private List<Event> events; 

//		private List<Product> products;

	public Product() {
	}


	
	
	public Product(Long id, @Size(min = 1) String name, @Size(min = 3) String description, String category,
			Double price, @Size(min = 3) String pictureUrl, int avgRatings, Date createdAt, Date updatedAt,
			List<Event> events, List<Review> reviews, List<User> users) {
		super();
		this.id = id;
		this.name = name;
		this.description = description;
		this.category = category;
		this.price = price;
		this.pictureUrl = pictureUrl;
		this.createdAt = createdAt;
		this.updatedAt = updatedAt;
		this.events = events;
		this.reviews = reviews;
		this.users = users;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Double getPrice() {
		return price;
	}

	public void setPrice(Double price) {
		this.price = price;
	}

	public String getPictureUrl() {
		return pictureUrl;
	}

	public void setPictureUrl(String pictureUrl) {
		this.pictureUrl = pictureUrl;
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

	public List<User> getUsers() {
		return users;
	}
	

	public void setUsers(List<User> users) {
		this.users = users;
	}

	public List<Event> getEvents() {
		return events;
	}

	public void setEvents(List<Event> events) {
		this.events = events;
	}
	
	public List<Review> getReviews() {
        return reviews;
    }
 
    public void setReviews(List<Review> reviews) {
        this.reviews = reviews;
    }
    
	public int getAverage() {
		int sum = 0;
		for(Review r: this.reviews) {
			sum += r.getRating();
		}	
		System.out.printf("sum of rating %d", sum);
		return (int)(sum/this.reviews.size());
	}
 



	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((id == null) ? 0 : id.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (obj != null && this.getClass() == obj.getClass()) {
			Product other = (Product) obj;
			return other.id == this.id;
		}
		return false;
	}

}
