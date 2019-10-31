package com.ssm.xingxingsystem.config;/*
/*
 *      Created by IntelliJ IDEA.
 *      User:baiziming
 *      Date: 2019/10/23 0022
 *      Time: 17:38
 */

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.*;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

@Configuration
public class WebConfig implements WebMvcConfigurer {
    //配置项目启动默认访问路径
    @Override
    public void addViewControllers(ViewControllerRegistry registry) {
        registry.addViewController("/").setViewName("logintest");
    }

    //配置拦截器放行路径 并且添加拦截器
    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        registry.addInterceptor(new LoginInterceptor())
                .excludePathPatterns("/").excludePathPatterns("/recharge/**")
                .excludePathPatterns("/jsp/**/**");
//                .excludePathPatterns("/static/**/**");
    }
    //配置 springBoot 整合 jsp + thymeleaf  使用@Bean 注入
    @Bean
    public ViewResolver viewResolver() {
        InternalResourceViewResolver resolver = new InternalResourceViewResolver();
        resolver.setPrefix("/jsp/");//配置路径前缀
        resolver.setSuffix(".jsp");//配置路径后缀
        //resolver.setViewNames("*/*");//配置返回名称 return "user/userList" "admin/adminLogin" controller 中的方法返回的 String and ModelAndView 中 setViewName 方法
        resolver.setViewNames("*");
        resolver.setOrder(2);
        return resolver;
    }

    @Override
    public void configureDefaultServletHandling(DefaultServletHandlerConfigurer configurer) {
        configurer.enable();
    }

    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        WebMvcConfigurer.super.addResourceHandlers(registry);
    }

}
