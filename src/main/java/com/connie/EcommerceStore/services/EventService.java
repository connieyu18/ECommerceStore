package com.connie.EcommerceStore.services;

import java.util.Optional;

import org.springframework.stereotype.Service;

import com.connie.EcommerceStore.models.Event;
import com.connie.EcommerceStore.models.Product;
import com.connie.EcommerceStore.respositories.EventRepository;

@Service
public class EventService {
	private final EventRepository eventRepository;
	
	public EventService(EventRepository eventRepository) {
		this.eventRepository  = eventRepository;
	}
	
    public Event save(Event event) {
        return eventRepository.save(event);
    }
	public Iterable<Event> getAllEvents() {
	    return eventRepository.findAll();
	}

	public  Event findEvent(Long id) {
		Optional<Event> optionalEvent= eventRepository.findById(id); 
		if (optionalEvent.isPresent()) {
			return optionalEvent.get(); 
		}
		else {
			return null; 
		}
	}

	public void deleteEvent(Long id) {
		eventRepository.deleteById(id); 
		
	}
}
