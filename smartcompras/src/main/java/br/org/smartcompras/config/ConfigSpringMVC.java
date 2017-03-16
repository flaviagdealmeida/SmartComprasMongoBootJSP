package br.org.smartcompras.config;

import javax.servlet.Filter;

import org.springframework.web.filter.CharacterEncodingFilter;
import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;



public class ConfigSpringMVC extends AbstractAnnotationConfigDispatcherServletInitializer {

		@Override
		protected Class<?>[] getRootConfigClasses() {
			return new Class[]{AppWebConfiguration.class, MongoConfiguration.class};
		}

		@Override
		protected Class<?>[] getServletConfigClasses() {
			return new Class[]{};
		}

		@Override
		protected String[] getServletMappings() {
			
			return new String[] {"/"};
		}
	

		@Override
		protected Filter[] getServletFilters() {
			CharacterEncodingFilter encodingFilter = new CharacterEncodingFilter();
			encodingFilter.setEncoding("UTF-8");
		return new Filter[]{encodingFilter};
		}
}
