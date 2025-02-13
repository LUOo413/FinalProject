package com.example.demo.entity;

import java.util.Date;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.Lob;
import jakarta.persistence.MapsId;
import jakarta.persistence.OneToOne;
import jakarta.persistence.Table;
import jakarta.persistence.Temporal;
import jakarta.persistence.TemporalType;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Table(name = "vendor_detail")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class VendorDetail {
    @Id
    private Integer vendorId; // 與 User 表的 userId 關聯

    @OneToOne
    @MapsId
    @JoinColumn(name = "vendor_id")
    private User user;

    @Column(nullable = false ,name = "vendor_name")
    private String vendorName;

    @Column(nullable = false)
    private String vendorDescription;

    @Lob
    @Column(nullable = false)
    private byte[] vendorLogoImg;

    @Column(nullable = false)
    private String vendorAddress;

    @Column(nullable = false)
    private String vendorPhone;

    @Column(nullable = false)
    private String contactEmail;

//    @Column(nullable = false)
//    private String contactPerson;

    @Column(nullable = false, length = 20)
    private String vendorTaxidNumber;

    @Column(nullable = false)
    private Boolean status = false;

    @Column(nullable = false, updatable = false)
    @Temporal(TemporalType.TIMESTAMP)
    private Date registrationDate = new Date();

    @Column(nullable = false)
    @Temporal(TemporalType.TIMESTAMP)
    private Date updatedDate = new Date();
}
