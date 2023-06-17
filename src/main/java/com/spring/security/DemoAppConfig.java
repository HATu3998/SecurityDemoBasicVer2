package com.spring.security;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

@Configuration
@EnableWebMvc
@ComponentScan(basePackages = "com.spring.security")
public class DemoAppConfig {

	@Bean
	public ViewResolver viewResolver() {
		InternalResourceViewResolver viewR=new InternalResourceViewResolver();
		viewR.setPrefix("/WEB-INF/view/");
		viewR.setSuffix(".jsp");
		return viewR;
	};
}
