package com.example.demo.model;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.demo.entity.VendorCategory;

@Repository
public interface VendorCategoryRepository extends JpaRepository<VendorCategory, Integer> {
	Optional<VendorCategory> findByCategoryName(String categoryName);
}
