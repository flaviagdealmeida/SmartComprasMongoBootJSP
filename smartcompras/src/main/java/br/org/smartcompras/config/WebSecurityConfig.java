package br.org.smartcompras.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;

import br.org.smartcompras.service.CostumerUserDetails;

@Configuration
@EnableGlobalMethodSecurity(securedEnabled = true, proxyTargetClass = true)
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {

	@Bean
	public UserDetailsService mongoUserDetails() {
		return new CostumerUserDetails();
	}

	@Override
	protected void configure(HttpSecurity http) throws Exception {
		
		http.authorizeRequests()
		.antMatchers("/home").permitAll()
		.antMatchers("/cadastro").permitAll()
		.antMatchers("/produto").hasAnyRole("ADMIN", "GEST")
		.antMatchers("/listaproduto").hasAnyRole("ADMIN", "GEST")
		.antMatchers("/marca").hasAnyRole("ADMIN", "GEST")
		.antMatchers("/listamarca").hasAnyRole("ADMIN", "GEST")
		.antMatchers("/supermercado").hasRole("ADMIN")
		.antMatchers("/listasupermercado").hasRole("ADMIN")
		.antMatchers("/listadecompras").hasRole("ADMIN")
		.antMatchers("/listapredefinida").hasAnyRole("ADMIN", "GEST")
		.antMatchers("/listaspre").hasAnyRole("ADMIN", "GEST")
		.antMatchers("/importararquivo").hasAnyRole("ADMIN", "GEST")
		.and()
		.exceptionHandling().accessDeniedPage("/erro404");
				
		
		
		http
    	.authorizeRequests().antMatchers("/WEB-INF/views/**")
    	.hasAnyAuthority("ROLE_ADMIN", "ROLE_USER", "ROLE_GEST").anyRequest().authenticated();	
    	
	http.formLogin()
        .loginPage("/login").defaultSuccessUrl("/sistema", true)
        .permitAll()
        .and()
        .logout().logoutRequestMatcher(new AntPathRequestMatcher("/logout")).logoutSuccessUrl("/login");
		
	}

	@Autowired
	public void configureGlobal(AuthenticationManagerBuilder auth) throws Exception {

		UserDetailsService userDetailsService = mongoUserDetails();
		auth.userDetailsService(userDetailsService);
	}

	@Override
	public void configure(WebSecurity web) throws Exception {
		web.ignoring().antMatchers("/css/*");
		web.ignoring().antMatchers("/bootstrap/**");
		web.ignoring().antMatchers("/js/**");
		web.ignoring().antMatchers("/img/**");
	}
}