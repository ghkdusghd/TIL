package kr.bit.config;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.ViewResolverRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

/*
 * @Configuration : 프로젝트 관련 설정을 하는 클래스라고 명시하는 어노테이션. 스프링 빈의 싱글톤을 보장한다.
 * @EnableWebMvc : 핸들러맵핑이나 인터셉터 등 필요한 기능들을 가져와서 손쉽게 설정할 수 있게 해준다.
 * @ComponentScan : 스캔할 패키지를 지정한다.
 */

@Configuration
@EnableWebMvc
@ComponentScan(basePackages = {"kr.bit.controller"})
public class ServletAppContext implements WebMvcConfigurer{
	
	//Controller 에서 반환하는 뷰의 논리적 주소(viewPath)를 물리적인 경로로 바꿔준다.
	@Override
	public void configureViewResolvers(ViewResolverRegistry registry) {
		WebMvcConfigurer.super.configureViewResolvers(registry);
		registry.jsp("/WEB-INF/views/",".jsp");
	}
	
	//정적 파일의 경로를 매핑한다.
	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		WebMvcConfigurer.super.addResourceHandlers(registry);
		registry.addResourceHandler("/resources/**").addResourceLocations("/resources/");
	}
}
