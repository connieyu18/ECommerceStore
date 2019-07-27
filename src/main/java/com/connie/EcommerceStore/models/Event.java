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
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.PrePersist;
import javax.persistence.PreUpdate;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.springframework.format.annotation.DateTimeFormat;


@Entity
@Table(name="events")
public class Event {
	 @Id
	    @GeneratedValue(strategy = GenerationType.IDENTITY)
		private Long id;
	 	@NotNull(message = "Recipient Name is required.")
	    private String recipient;
	    @DateTimeFormat(pattern="yyyy-MM-dd")
	    private Date date;
	    private String eventName;
	    
	    @Column(updatable=false)
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

		@ManyToOne(fetch = FetchType.LAZY)
	    @JoinColumn(name="user_id")
	    private User user; 
	    

		@ManyToOne(fetch = FetchType.LAZY)
	    @JoinColumn(name="product_id")
	    private Product product; 
	    

	    public Event() {
	    }


		public Event(@NotNull(message = "Recipient Name is required.") String recipient, Date date, String eventName,
				Date createdAt, Date updatedAt) {
			super();
			this.recipient = recipient;
			this.date = date;
			this.eventName = eventName;
			this.createdAt = createdAt;
			this.updatedAt = updatedAt;
		}
		public String getEventName() {
			return eventName;
		}
		public void setEventName(String eventName) {
			this.eventName = eventName;
		}
		public Long getId() {
			return id;
		}
		public void setId(Long id) {
			this.id = id;
		}
		public String getRecipient() {
			return recipient;
		}
		public void setRecipient(String recipient) {
			this.recipient = recipient;
		}
		public Date getDate() {
			return date;
		}
		public void setDate(Date date) {
			this.date = date;
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
