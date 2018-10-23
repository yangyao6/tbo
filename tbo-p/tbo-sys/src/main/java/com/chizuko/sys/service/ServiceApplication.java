package com.chizuko.sys.service;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.netflix.eureka.EnableEurekaClient;
import org.springframework.web.bind.annotation.RestController;

/**
 * @ClassName ServiceApplication
 * @Description TODO 测试Service
 * @Author yangyao
 * @Date 2018/10/23 0023 19:47
 * @Version 1.0
 **/

@SpringBootApplication
@EnableEurekaClient
//@EnableDiscoveryClient
@RestController
public class ServiceApplication {

    public static void main(String[] args) {
        SpringApplication.run(ServiceApplication.class, args);
    }
}
