package com.anjuc.utils.Seller;

import org.springframework.data.jpa.repository.JpaRepository;

public interface SellerRepository extends JpaRepository<Seller, Integer>{

    public Seller findSellerBySellerCode(String sellerCode);
    public void deleteSellerById(int id);
    public Seller findSellerById(int id);

}
