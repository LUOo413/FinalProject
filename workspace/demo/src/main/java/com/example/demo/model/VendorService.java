package com.example.demo.model;

import com.example.demo.entity.VendorDetail;
import java.util.Optional;

public interface VendorService {
    VendorDetail createVendor(VendorDetail vendor);
    Optional<VendorDetail> getVendorById(Integer vendorId);
}