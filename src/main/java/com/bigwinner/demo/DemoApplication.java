package com.bigwinner.demo;

import lombok.extern.slf4j.Slf4j;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@Slf4j
public class DemoApplication {

	public static void main(String[] args) {
		log.debug("debug: test debug log");
		log.info("info: test info log");
		log.warn("warn: test warn log");
		log.error("error: test error log");
		SpringApplication.run(DemoApplication.class, args);
		log.info("hello world!");
	}

}
