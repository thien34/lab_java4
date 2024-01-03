package com.example.lab4.service;

import com.example.lab4.entity.Product;

import java.util.ArrayList;
import java.util.List;

public class ProductService {
    public List<Product> fakeData() {
        List<Product> list = new ArrayList<>();
        Product product = Product.builder()
                .name("Samsung 1500")
                .image("samsung.png")
                .price(170.0)
                .discount(0.17)
                .build();
        Product product1 = Product.builder()
                .name("Iphone S")
                .image("iphone.png")
                .price(320.0)
                .discount(0.1)
                .build();
        Product product2 = Product.builder()
                .name("Nokia XP3000")
                .image("nokia.png")
                .price(560.0)
                .discount(0.15)
                .build();
        list.add(product);
        list.add(product1);
        list.add(product2);
        return list;
    }

}
