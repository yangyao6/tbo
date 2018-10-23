package com.chizuko.tboregistry;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.netflix.eureka.server.EnableEurekaServer;

@SpringBootApplication
@EnableEurekaServer
public class TboEurekaApplication {

    public static void main(String[] args) {
        SpringApplication.run(TboEurekaApplication.class, args);
    }
}
