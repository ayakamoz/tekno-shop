package net.ahmed.teknoshopbackend.dao;

import java.util.List;

import net.ahmed.teknoshopbackend.dto.Category;

public interface CategoryDAO {
	
	
	List<Category> list();
	Category get(int id);
}
