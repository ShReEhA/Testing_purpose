package com.zoho.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zoho.entities.Contacts;
import com.zoho.entities.Lead;
import com.zoho.repositories.ContactRepository;
import com.zoho.repositories.LeadRepository;

@Service
public class ContactServiceImpl implements ContactService {
	
	@Autowired
	private ContactRepository ContactRepo;
	
	@Override
	public void saveContactInformation(Contacts Contact) {
		ContactRepo.save(Contact);
	}

	@Override
	public List<Contacts> getAllContacts() {
		List<Contacts> Contacts = ContactRepo.findAll();
		return Contacts;
	}

	@Override
	public Contacts findContactById(long id) {
		Optional<Contacts> findById = ContactRepo.findById(id);
		Contacts Contact = findById.get();
		return Contact;
	}

}
