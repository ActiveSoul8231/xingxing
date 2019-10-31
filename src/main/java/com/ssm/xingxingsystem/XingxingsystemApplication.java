package com.ssm.xingxingsystem;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan(value="com.*")
public class XingxingsystemApplication {

    public static void main(String[] args) {
        SpringApplication.run(XingxingsystemApplication.class, args);
    }

}
