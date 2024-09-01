# NCBT

> React, Spring Boot, MyBatis Project
>
> <b style="color:#02c75a"> 개요 🧩</b> 네이버 클라우드 자격증 시험 NCA 를 준비하면서 의문이 생겼다. CBT 시험임에도 여타 다른 자격증 시험과 달리 기출 문제를 모아두는 사이트가 없었다는 것. 그래서 만들어보기로 했다. Naver CBT 사이트 !
>
> <b style="color:#02c75a">기술 🚀</b> 이번 프로젝트는 Boot 와 MyBatis 환경에서 개발해보기로 했다. 이유는 JPA 환경에 의존하다보니 학생 개발자로서 학습할 기회가 없다는 것과 채용 공고를 보았을 때 아직은 기업들이 MyBatis 기술을 더 선호한다는 것 두 가지였다. 개인적으로도 Gradle 로 MyBatis 를 사용해본 경험은 없어서 공부가 될 것 같아 찬성 !
>
> <b style="color:#02c75a">인원 🍥</b> 총 2인 개발 (전원 풀스택 참여)

<hr>

### 1️⃣ 프로젝트 세팅

### Back

<b>1. Build.gradle 의존성 추가</b>
|분류|정보|
|---|---|
|기본| - Spring Boot DevTools <br> - Lombok <br> - Spring Web |
| 마이바티스 | - MyBatis Framework <br> - JDBC API <br> - MySQL Driver |
| 시큐리티 | - Spring Security <br> - OAuth2 Client |

<b>2. application.yml</b>

```yml
# DB 연결 정보
spring:
  datasource:
    driver-class-name: com.mysql.cj.jdbc.Driver
    url: jdbc:mysql://localhost:3306/ncbt
    username: root
    password: "0000"

# 마이바티스 설정
mybatis:
  type-aliases-package: kr.bit.ncbt.domain
  mapper-locations: classpath:mapper/*.xml
  configuration:
    map-underscore-to-camel-case: true
```

<b>3. MyBatisConfig.class</b>

```java
@Configuration
public class MyBatisConfig {

// DataSource : 데이터베이스 연결을 제공하는 객체. yml 에서 설정한 DB 연결 정보가 자동으로 주입된다.
    @Autowired
    private DataSource dataSource;

// MyBatis에서 SQL 세션을 관리하는 sessionFactory 를 생성하는 객체. 데이터베이스와의 상호작용을 처리한다.
    @Bean
    public SqlSessionFactory sqlSessionFactory() throws Exception {
        SqlSessionFactoryBean factoryBean = new SqlSessionFactoryBean();
        factoryBean.setDataSource(dataSource);
        return factoryBean.getObject();
    }
}
```

<b>4. Mapper Interface</b>

- Mapper 는 스프링 빈으로 사용해도 되고 xml 파일을 따로 빼서 사용해도 된다.
- 개인적으로 스프링 빈 어노테이션을 사용하는 것이 직관적이고 간편해서 빈으로 사용했다.

```java
@Mapper
public interface TestMapper {
    @Select("SELECT * FROM user")
    List<User> testSelect();

    @Insert("INSERT user(email,nickname,password,is_admin,platform) " +
            "values (#{email}, #{nickname}, #{password}, #{is_admin}, #{platform})")
    int testInsert(User user);

}
```

<b>5. JUnit Test</b>

- 1~4 까지 설정한 후 단위테스트로 마이바티스 연동 여부를 확인해줬다.

```java
@SpringBootTest
public class TestMapperTest {

    @Autowired
    private TestMapper testMapper;

    @Test
    public void insertTest() {
        // given
        User user = new User();
        user.setEmail("test@email");
        user.setPassword("123456");
        user.setNickname("tester3");
        user.set_admin(false);
        user.setPlatform("normal");

        // when
        testMapper.testInsert(user);

        // then
        List<User> users = testMapper.testSelect();
        User userTest = users.get(users.size() - 1);
        Assertions.assertThat(userTest).isEqualTo(user);
    }
}
```

<div style="color: gray">
🔖 참고문서

- 스프링 부트 기초 : https://gdngy.tistory.com/120
- 스프링 부트와 마이바티스 연동 : https://gdngy.tistory.com/163
, https://velog.io/@dondonee/MyBatis-%EC%8A%A4%ED%94%84%EB%A7%81%EB%B6%80%ED%8A%B8-%EB%A7%88%EC%9D%B4%EB%B0%94%ED%8B%B0%EC%8A%A4-%EC%97%B0%EB%8F%99#%EB%A7%88%EC%9D%B4%EB%B0%94%ED%8B%B0%EC%8A%A4-%EC%97%B0%EB%8F%99-%ED%85%8C%EC%8A%A4%ED%8A%B8
</div>
