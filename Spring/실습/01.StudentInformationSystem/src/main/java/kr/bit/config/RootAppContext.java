package kr.bit.config;

import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;

import com.zaxxer.hikari.HikariConfig;
import com.zaxxer.hikari.HikariDataSource;

/*
 * 프로젝트 작업시 사용할 Bean 을 정의하는 클래스.
 * 해당 프로젝트에서는 DB관련 설정들을 작성해둘 것이다.
 * 
 * @MapperScan : 패키지 경로에 있는 인터페이스들은 전부 Mapper 로 사용할 수 있게 해준다.
 * @PropertySource : 프로퍼티 파일의 위치를 넣어주면 Environment 객체에 자동주입된다.
 */

@Configuration
@MapperScan(basePackages = {"kr.bit.mapper"})
@PropertySource({"classpath:db.properties"})
public class RootAppContext {
     
   @Autowired
   private Environment env;
   
   @Bean
   public DataSource myDataSource() {
      HikariConfig hikari=new HikariConfig();  //connection pool
      hikari.setDriverClassName(env.getProperty("jdbc.driver"));
      hikari.setJdbcUrl(env.getProperty("jdbc.url"));
      hikari.setUsername(env.getProperty("jdbc.user"));
      hikari.setPassword(env.getProperty("jdbc.password"));
      
      HikariDataSource myDataSource=new HikariDataSource(hikari);
      return myDataSource;
   }
   
   //DataSource 를 참조하여 MyBatis와 MySQL 서버를 연동시켜준다.
   @Bean
   public SqlSessionFactory sessionFactory() throws Exception{
     SqlSessionFactoryBean sessionFactory=new SqlSessionFactoryBean();
     sessionFactory.setDataSource(myDataSource());
     return (SqlSessionFactory)sessionFactory.getObject();
   }
   
}