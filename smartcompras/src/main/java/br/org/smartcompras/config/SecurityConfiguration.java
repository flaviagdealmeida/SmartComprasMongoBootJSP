//package br.org.smartcompras.config;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.context.annotation.Configuration;
//import org.springframework.http.HttpMethod;
//import org.springframework.security.authentication.AuthenticationProvider;
//import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
//import org.springframework.security.config.annotation.web.builders.HttpSecurity;
//import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
//import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
//import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
//
//import br.org.smartcompras.controller.UsuarioController;
//
//@Configuration
//@EnableWebSecurity
//public class SecurityConfiguration extends WebSecurityConfigurerAdapter  {
//	@Autowired
//	private UsuarioController ucontroler;
//	
//	@Autowired
//	private AuthenticationProvider authProvider;
//	
//
//	@Override
//	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
//	
//	
//		auth
//			.userDetailsService(ucontroler)
//			.passwordEncoder(new BCryptPasswordEncoder());
//	}
//	
//	
//	@Autowired
//	private UsuarioController ucontroller;
//	
//	@Override
//	protected void configure(HttpSecurity http) throws Exception {
//		http.authorizeRequests()
//			.antMatchers("/produto").hasRole("ADMIN")
////			.antMatchers("/listaproduto").hasRole("ADMIN")
////			.antMatchers("/marca").hasRole("ADMIN")
////			.antMatchers("/listamarca").hasRole("ADMIN")
////			.antMatchers("/listapredefinida").hasRole("ADMIN")
////			.antMatchers(HttpMethod.POST,"/produto").hasRole("ADMIN")
////			.antMatchers("/produto/**").permitAll() //
//			.antMatchers("/addproduto").permitAll()
//			.antMatchers("/listaproduto").permitAll()
//			.antMatchers("/marca").permitAll()
//			.antMatchers("/addmarca").permitAll()
//			.antMatchers("/listamarca").permitAll()
//			.antMatchers("/listapredefinida").permitAll()
//			.antMatchers(HttpMethod.POST).permitAll()
//			.antMatchers(HttpMethod.GET).permitAll()
//			.antMatchers("/home").permitAll()
//			.antMatchers("/cadastro").permitAll()
//			.antMatchers("/addusuario").permitAll()
//			.antMatchers("/listadecompras").permitAll()
//			.antMatchers("/localizacao").permitAll()
//			.antMatchers("/rodape").permitAll()
//			.antMatchers("/sistema").permitAll()
//			.antMatchers("/login").permitAll()
//			.antMatchers("/usuario").permitAll()
//			.antMatchers("/uso").permitAll()
//			.antMatchers("/").permitAll()
//			.antMatchers("/equipe").permitAll()
//			.antMatchers("/css/**", "/js/**", "/img/**").permitAll()
//			.antMatchers("/resources/**").permitAll()
//			.anyRequest().authenticated()
//			.and()
//		.exceptionHandling()
//				.accessDeniedPage("/negado")
//				.and()
//		.formLogin()
//			.loginPage("/login")
//			.usernameParameter("email")
//			.passwordParameter("senha")
//			.failureUrl("/login?error=1")
//			.permitAll();
////			.and()
////		.logout()
////			.logoutUrl("/logout")
////			.logoutSuccessUrl("/logout?logout")
////			.invalidateHttpSession(true)
////			.permitAll();
//			
//	}
//	
//
//	
//	
//}
