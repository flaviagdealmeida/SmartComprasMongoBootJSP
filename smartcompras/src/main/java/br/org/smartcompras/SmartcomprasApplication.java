package br.org.smartcompras;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.context.embedded.ConfigurableEmbeddedServletContainer;
import org.springframework.boot.context.embedded.EmbeddedServletContainerCustomizer;
import org.springframework.boot.web.servlet.ErrorPage;
import org.springframework.context.annotation.Bean;
import org.springframework.http.HttpStatus;

@SpringBootApplication
public class SmartcomprasApplication {
	
		
	public static void main(String[] args) {
		SpringApplication.run(SmartcomprasApplication.class, args);
	}
	
	@Bean
	public EmbeddedServletContainerCustomizer containerCustomizer() {
	 
	    return new EmbeddedServletContainerCustomizer() {
	        @Override
	        public void customize(ConfigurableEmbeddedServletContainer container) {
	 
	            ErrorPage error401Page = new ErrorPage(HttpStatus.UNAUTHORIZED, "/erro404");
	            ErrorPage error404Page = new ErrorPage(HttpStatus.NOT_FOUND, "/erro404");
	            ErrorPage error500Page = new ErrorPage(HttpStatus.INTERNAL_SERVER_ERROR, "/erro404");
	 
	            container.addErrorPages(error401Page, error404Page, error500Page);
	        }
	    };
	}
	
}
