package com.example.lab4.entity;

import lombok.*;
import lombok.experimental.FieldDefaults;

import java.util.Date;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@ToString
@Builder
@FieldDefaults(level = AccessLevel.PRIVATE)
public class Product {
    String name;
    String image;
    Double price;
    Double discount;
    Date date = new Date();
}
