package com.example.lab4.service;

import com.example.lab4.entity.User;

import java.util.ArrayList;
import java.util.List;

public class UserService {
    List<User> list = new ArrayList<>();

    public List<User> fakeData() {
        list.add(new User("khanh", "123", true));
        list.add(new User("Anh", "123", true));
        list.add(new User("Son", "123", false));
        list.add(new User("Ha", "123", true));
        list.add(new User("Trang", "123", false));
        return list;
    }
}
