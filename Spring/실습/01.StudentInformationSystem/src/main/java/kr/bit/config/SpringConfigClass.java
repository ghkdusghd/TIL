package kr.bit.config;

import javax.servlet.Filter;

import org.springframework.web.filter.CharacterEncodingFilter;
import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

/*
 * 1. web.xml 을 자바로 설정하기
 * 웹 어플리케이션이 실행되었을 때 WebApplicationInitializer 를 상속받은 클래스가 있으면 자동으로 실행해준다.
 * 다만 그렇게 하면 코드가 복잡해서 AbstractAnnotationConfigDispatcherServletInitializer 를 상속받아 작성했다.
 * 이 방법은 코드가 간단하지만 정해진대로 적어줘야 한다.
 * 
 * 1-1. ServletAppContext 를 DispatcherServlet 로 등록한다.
 * 1-2. Bean 을 정의해주는 RootAppContext.java 를 생성하고 읽어온다.
 * 1-3. Encoding 을 설정한다.
 */
public class SpringConfigClass extends AbstractAnnotationConfigDispatcherServletInitializer {
	
	@Override
	protected String[] getServletMappings() {
		// TODO Auto-generated method stub
		return new String[] {"/"};
	}
	
	@Override
	protected Class<?>[] getServletConfigClasses() {
		// TODO Auto-generated method stub
		return new Class[] {ServletAppContext.class};
	}
	
	
	@Override
	protected Class<?>[] getRootConfigClasses() {
		// TODO Auto-generated method stub
		return new Class[] {RootAppContext.class};
	}
	
	
	@Override
	protected Filter[] getServletFilters() {
		// TODO Auto-generated method stub
		CharacterEncodingFilter encodingFilter = new CharacterEncodingFilter();
		encodingFilter.setEncoding("UTF-8");
		return new Filter[] {encodingFilter};
	}
	

}
