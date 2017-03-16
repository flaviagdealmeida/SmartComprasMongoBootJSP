package br.org.smartcompras.config;

import org.springframework.cache.annotation.EnableCaching;
import org.springframework.web.servlet.config.annotation.DefaultServletHandlerConfigurer;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;

@EnableWebMvc
@EnableCaching
public class AppWebConfiguration extends WebMvcConfigurerAdapter {

	
//	@Bean
//	public CacheManager cacheManager(){
//		CacheBuilder<Object, Object> builder = CacheBuilder.newBuilder().maximumSize(1000).expireAfterAccess(5, TimeUnit.MINUTES);
//        GuavaCacheManager manager = new GuavaCacheManager();
//        manager.setCacheBuilder(builder);
//        return manager;
//		
//	}
	
	
	
	
	
	@Override
	public void configureDefaultServletHandling(DefaultServletHandlerConfigurer configurer) {
		
		configurer.enable();
	}
	
	
}
