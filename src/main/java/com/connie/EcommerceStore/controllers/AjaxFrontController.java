//package com.connie.EcommerceStore.controllers;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestMethod;
//import org.springframework.web.bind.annotation.ResponseBody;
//
//import com.connie.EcommerceStore.models.Review;
//import com.connie.EcommerceStore.services.ProductService;
//import com.connie.EcommerceStore.services.ReviewService;
//
//@Controller
//public class AjaxFrontController {
// 
//    @Autowired
//     private ProductService productService;
// 
//    @Autowired
//     private ReviewService reviewService;
// 
//    @RequestMapping(value = "/createReview",method = RequestMethod.POST/*, consumes = {"application/json;charset=utf-8"}*/)
//    public @ResponseBody String getTranslitURL(Review review) {
//        System.out.println("*");
//        System.out.println("request is "+review.toString());
//        System.out.println("*");
//        String errorMessage="";
////        if(review.getUserName()==null || review.getUserName().equals("")){
////            errorMessage+="User name is required! ";
////        }
////        if(review.getUserEmail()==null || review.getUserEmail().equals("")
////                || review.getUserEmail().indexOf("@")
//        {
////            errorMessage+="Valid email is required!";
////        }
//        if(errorMessage.equals("")){
//            reviewService.save(review);
//            productService.updateRating(review.getProduct());
//            return "SUCCESS";
//        }else{
//            return errorMessage;
//        }
//    }
//}
//}