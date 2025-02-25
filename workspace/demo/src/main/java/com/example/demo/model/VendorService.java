package com.example.demo.model;

import com.example.demo.entity.VendorDetail;
import java.util.Optional;

public interface VendorService {
    Optional<VendorDetail> getVendorById(Integer vendorId);
    VendorDetail updateVendor(VendorDetail vendor);
    public void deleteVendor(VendorDetail vendorDetail);
    public Optional<VendorDetail> getVendorByUserId(Integer userId);
}
