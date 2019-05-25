package com.anjuc.utils.Seller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
public class SellerController {

    @Autowired SellerService sellerService;


    @GetMapping(value = "/utils/sellers", params = "seller_code")
    public ResponseEntity<Seller>getSellerBySellerCode(@RequestParam(name = "seller_Code")String sellerCode){
        return new ResponseEntity<>(sellerService.getSellerBySellerCode(sellerCode), HttpStatus.OK);
    }

    @GetMapping("/utils/sellers")
    public ResponseEntity<List<Seller>> getAllSellers(){
        return new ResponseEntity<>(sellerService.getAllSellers(),HttpStatus.OK);
    }

//    @GetMapping("/utils/sellers/{id}")
//    public ResponseEntity<Seller> getSellerById(@PathVariable(value = "id") Long userId)
//            throws ResourceNotFoundException {
//        Seller seller =
//                sellerRepository
//                        .findById(userId)
//                        .orElseThrow(() -> new ResourceNotFoundException("User not found on :: " + userId));
//        return ResponseEntity.ok().body(seller);
//    }


    @PostMapping("utils/sellers")
    public ResponseEntity<Seller> createSeller(@RequestBody Seller seller) {
        return new ResponseEntity<>(sellerService.createSeller(seller), HttpStatus.OK);
    }

    @PutMapping("/utils/sellers/{id}")
    public ResponseEntity<Seller> updateSeller(@PathVariable int id, @RequestBody Seller seller) {
        return new ResponseEntity<Seller>(sellerService.updateSeller(id, seller), HttpStatus.OK);
    }

    @DeleteMapping("utils/sellers/{id}")
    public ResponseEntity deleteSeller(@PathVariable int id) {
        sellerService.deleteSeller(id);
        return new ResponseEntity(HttpStatus.OK);
    }

}
