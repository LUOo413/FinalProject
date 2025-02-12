package com.example.demo.model;

import com.example.demo.entity.VendorDetail;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface VendorDetailRepository extends JpaRepository<VendorDetail, Integer> {
}