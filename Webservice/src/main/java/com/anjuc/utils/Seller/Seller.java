package com.anjuc.utils.Seller;




import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;

import javax.persistence.*;
import java.util.Date;


@Entity
@Table(name = "sellers")
public class Seller {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;

    @Column(name = "seller_code", nullable = false, unique = true)
    private String sellerCode;

    @Column(name = "seller_name", nullable = false)
    private String sellerName;

    @Column(name = "seller_city", nullable = false )
    private String sellerCity;

    @Column(name = "seller_phone", nullable = false)
    private String seller_phone;

    @Column(name = "seller_email", nullable = false, unique = true)
    private String seller_email;

    @Column(name = "seller_password", nullable = false, unique = true)
    private String seller_password;

    @Column(name = "seller_product_id", nullable = false)
    private String seller_product_id;

    @Column(name = "created_at")
    @CreationTimestamp
    private Date createdAt;

    @Column(name = "updated_at")
    @UpdateTimestamp
    private Date updatedAt;



    public Seller(){

    }

    public Seller( String sellerCode, String sellerName, String sellerCity, String sellerPhone, String sellerEmail, String sellerPassword, String sellerProductId){
        this.setSellerCode(sellerCode);
        this.setSellerName(sellerName);
        this.setSellerCity(sellerCity);
        this.setSeller_phone(sellerPhone);
        this.setSeller_email(sellerEmail);
        this.setSeller_password(sellerPassword);
        this.setSeller_product_id(sellerProductId);
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getSellerCode() {
        return sellerCode;
    }

    public void setSellerCode(String sellerCode) {
        this.sellerCode = sellerCode;
    }

    public String getSellerName() {
        return sellerName;
    }

    public void setSellerName(String sellerName) {
        this.sellerName = sellerName;
    }

    public String getSellerCity() {
        return sellerCity;
    }

    public void setSellerCity(String sellerCity) {
        this.sellerCity = sellerCity;
    }

    public String getSeller_phone() {
        return seller_phone;
    }

    public void setSeller_phone(String seller_phone) {
        this.seller_phone = seller_phone;
    }

    public String getSeller_email() {
        return seller_email;
    }

    public void setSeller_email(String seller_email) {
        this.seller_email = seller_email;
    }

    public String getSeller_password() {
        return seller_password;
    }

    public void setSeller_password(String seller_password) {
        this.seller_password = seller_password;
    }

    public String getSeller_product_id() {
        return seller_product_id;
    }

    public void setSeller_product_id(String seller_product_id) {
        this.seller_product_id = seller_product_id;
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
}
