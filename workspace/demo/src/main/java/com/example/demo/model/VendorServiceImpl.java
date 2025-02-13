package com.example.demo.model;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.entity.VendorDetail;

@Service
public class VendorServiceImpl implements VendorService {

    @Autowired
    private VendorDetailRepository vendorDetailRepository;

    @Override
    public Optional<VendorDetail> getVendorById(Integer vendorId) {
        return vendorDetailRepository.findById(vendorId);
    }

    @Override
    public VendorDetail updateVendor(VendorDetail vendor) {
        return vendorDetailRepository.save(vendor);
    }
}

