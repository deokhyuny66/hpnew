package com.freeze.mybatis.web;

import lombok.extern.java.Log;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.web.header.writers.StaticHeadersWriter;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;

@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http.authorizeRequests()
                .antMatchers("/").permitAll()
                .antMatchers("/admsp/**").hasRole("ADMIN");

        http.formLogin();
        http.exceptionHandling().accessDeniedPage("/accessDenied");
        http.logout().logoutUrl("/logout").invalidateHttpSession(true);

    }
    
    /* 
     문제상황 : 로그인이 적용 되면, ai-calc/ai-calcProc 페이지를 못찾음.
     해  결 : 아래 무시해주는 경로 적어주면 됨.
    */
    @Override
    public void configure(WebSecurity web) throws Exception {
       // web.ignoring().requestMatchers(PathRequest.toStaticResources().atCommonLocations());
        web.ignoring() .antMatchers("/ai-calc/**")
                .antMatchers("/ai-calcProc/**");
    }
    
    @Autowired
    public void configureGlobal(AuthenticationManagerBuilder auth) throws Exception {

        auth.inMemoryAuthentication()
                .withUser("dhyoo")
                .password("{noop}1111")
                .roles("ADMIN");
    }
    
}