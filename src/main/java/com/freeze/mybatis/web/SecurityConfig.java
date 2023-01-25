package com.freeze.mybatis.web;

import lombok.extern.java.Log;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.security.servlet.PathRequest;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.web.header.writers.StaticHeadersWriter;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;

@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {

	
    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http.authorizeRequests()
        		.antMatchers("/").permitAll()
        		.antMatchers("/admsp/**").hasRole("ADMIN")
        		.anyRequest().authenticated()
        .and()
        .formLogin()
            /*.loginPage("/admsp/login")
            .loginProcessingUrl("/loginProc")
            .usernameParameter("id")
            .passwordParameter("pw")*/
            .defaultSuccessUrl("/admsp/products-list", true)
            .permitAll()
        .and()
            .logout().invalidateHttpSession(true);
        http.csrf().disable(); //해당 부분을 안해줘서 @ResponseBody 를 URL을 못찾았던거임. 
    }
    
	/* 
    문제상황 : 로그인이 적용 되면, ai-calc/ai-calcProc 페이지를 못찾음.
    해  결 : 아래 무시해주는 경로 적어주면 됨.
   */
   @Override
   public void configure(WebSecurity web) throws Exception {
   	//web.ignoring().requestMatchers(PathRequest.toStaticResources().atCommonLocations());
       web.ignoring() .antMatchers("/resources/static/**")
        .antMatchers("/ai-calc/**")
       	.antMatchers("/ai-calcProc/**")
       	.antMatchers("/privacy-consent/**")
       	.antMatchers("/terms-service/**")
       	.antMatchers("/contactProc/**")
       	.antMatchers("/static/assets/css/**")
       	.antMatchers("/static/assets/js/**")
       	.antMatchers("/static/assets/img/**")
       	.antMatchers("/static/assets/vendor/**")
       	.antMatchers("/static/assets/vendor/admsp/**")
       	.antMatchers("/static/assets/lib/**")
       	.antMatchers("/static/assets/php/**");
   }
    
    @Autowired
    public void configureGlobal(AuthenticationManagerBuilder auth) throws Exception {

        auth.inMemoryAuthentication()
                .withUser("sylee")
                .password("{noop}Eownwnsla12!@")
                .roles("ADMIN");
    }
    
}