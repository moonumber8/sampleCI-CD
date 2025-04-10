package com.example.demo.controller;

import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/transactions")
public class TransactionController {

    @GetMapping("/")
    public String hello() {
        return "Hello, CI/CD World!";
    }
}

