package com.anjuc.utils.Seller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;

@Service
@Transactional
public class SellerService {

    @Autowired
    private SellerRepository sellerRepository;

    public List<Seller> getAllSellers() {
        return sellerRepository.findAll();
    }

    public Seller getSellerBySellerCode(String sellerCode) {
        return sellerRepository.findSellerBySellerCode(sellerCode);
    }

    public Seller createSeller(Seller seller) {
        return sellerRepository.save(seller);
    }

    public Seller updateSeller(int id, Seller sellerDetails) {
        Seller seller = sellerRepository.findSellerById(id);

        seller.setSellerCode(sellerDetails.getSellerCode());
        seller.setSellerName(sellerDetails.getSellerName());
        seller.setSellerCity(sellerDetails.getSellerCity());
        seller.setSeller_phone(sellerDetails.getSeller_phone());
        seller.setSeller_password(sellerDetails.getSeller_password());
        seller.setSeller_email(sellerDetails.getSeller_email());
        seller.setSeller_product_id(sellerDetails.getSeller_product_id());

        return sellerRepository.save(seller);
    }

    public void deleteSeller(int id) {
        sellerRepository.deleteSellerById(id);
    }

}
