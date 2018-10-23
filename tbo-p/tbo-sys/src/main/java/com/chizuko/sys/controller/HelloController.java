package com.chizuko.sys.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cloud.client.discovery.DiscoveryClient;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;


/**
 * @ClassName HelloController
 * @Description TODO
 * @Author yangyao
 * @Date 2018/10/23 0023 19:49
 * @Version 1.0
 **/

@RestController
public class HelloController {

    private final Logger logger = LoggerFactory.getLogger(HelloController.class);

    @Autowired
    private DiscoveryClient client;

    @RequestMapping(value = "hello", method = RequestMethod.GET)
    public String index() {

        client.getServices().forEach(serviceId -> {
            client.getInstances(serviceId).forEach(item -> logger.info("/hello, host:" + item.getHost() + ", service_id:" + item.getServiceId()));
        });
//        ServiceInstance instance = client.getLocalServiceInstance();
//        logger.info("/hello, host:" + instance.getHost() + ", service_id:" + instance.getServiceId());
        return "Hello World";
    }
}
