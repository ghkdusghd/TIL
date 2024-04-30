# 01. Servlet_JSP

> Servlet
>
> Tomcat이 이해할수 있는 순수 Java 코드로만 이루어진 웹서버용 클래스로,
> 서블릿을 이용하면 웹 프로그래밍이 가능하지만 자바에 대한 지식이 필요하고,
> 화면 인터페이스 구현에 너무 많은 코드를 필요로 하는 등의 비효율적인 측면이
> 있어서 JSP 가 등장하게 되었다.

> JSP (Java Server Page)
>
> 자바로 서버 페이지를 작성하기 위한 언어.
> HTML과 jsp태그로 구성된다.

## 1. Servlet

- HttpServlet 클래스를 상속받아 구현한다.

  💡 HttpServlet ? Tomcat 을 설치하면 제공되는 클래스이며, GET 방식과 POST 방식의 메소드를 제공한다.

- GET : get을 통한 요청은 전송하는 데이터가 URL 주소 끝에 파라미터로 포함되어 전송되기 때문에 보안에 취약하다는 단점이 있다. (이 부분을 '쿼리 스트링' 이라고 부른다.)

- POST : 전송할 데이터를 HTTP 의 header 부분에 담아서 보낸다.

## 2. JSP

### 2-1. Script 요소

- Scriptlet (스크립트릿) : <% %>
- Declaration (선언문) : <%! %>
- Expression (표현식) : <%= %>
- Comment (주석) : <% !-- -- %>

```JSP
<%!
    //선언문에서는 전역변수, 메소드를 선언할 수 있다.
    int num = 10;

    public int add(int num) {
        return num + 1;
    }
%>
```

```JSP
<%
    //스크립트릿에서는 자바 코드를 사용할 수 있다.
    //변수는 지역변수로 선언되고 메소드를 선언할 수 없다.
    int sum = 0;
    for(int i = 0; i < 10; i++) {
        sum += i;
    }
%>
```

```JSP
<!-- 변수나 메소드의 결과값을 브라우저에 출력할 수 있다. -->
<%= sum %>
```

### 2-2. 지시자(Directive)

(JSP 페이지를 어떻게 처리할 것인지 설정하는 태그)

- page
- include
- taglib

```JSP
<!-- JSP 페이지에 대한 정보를 설정 -->
<%@ page .... %>

<!-- 현재 JSP 페이지에 포함할 외부 파일을 설정 -->
<%@ include ... %>

<!-- 각종 태그 라이브러리를 JSP에서 사용하기 위해 설정 -->
<%@ taglib uri="..." prefix="..." %>
```

### 2-3. 내장객체

(JSP에서 선언하지 않고 사용할 수 있는 객체)
| 내장객체 | 설명 |
|------|------|
| out | 출력 스트림 객체 |
| pageContext | JSP의 기본 객체로 페이지당 하나의 pageContext의 객체가 생성된다. |
| request | 브라우저에서 JSP 페이지로 요청되는 데이터 묶음 |
| response | 요청을 시도한 클라이언트로 전송할 응답 데이터 묶음 |
| session | 브라우저가 계속해서 공유할 데이터를 저장하는 객체 |
| application | 웹 어플리케이션이 실행되는 동안의 설정 정보 및 자원 데이터를 저장하는 객체 |

💡 유효범위(scope) : 내장객체들은 해당 객체에 정의된 유효범위 안에서만 데이터를 공유할 수 있다.

```
 page < request < session < application

    🍙 page : 하나의 페이지 에서만 유지
    🍙 request : 하나의 요청 에서만 유지
    🍙 session : 하나의 브라우저 에서만 유지
    🍙 application : 하나의 웹 에서만 유지

```

### 2-4. 페이지 이동 메소드

- redirect : response 객체를 사용함. 브라우저 url을 변경함으로써 페이지를 이동시킨다. response, request 객체의 데이터가 유지되지 않는다.

```JSP
response.sendRedirect(url);
```

- forward : request 객체를 사용함. 서버상에서 페이지가 이동된다. 브라우저의 url 이 변경되지 않고 response, request 객체의 데이터가 유지된다.

```JSP
request.getRequestDispatcher(url).forward(request, response);
```

### 2-5. 액션태그

(자바 코드 형태로 작성할 수 있는 것을 태그 형태로 정의한 것)

- <jsp:forward> : 페이지 이동
- <jsp:userBean> : 자바빈즈를 생성하고 사용하기 위한 환경을 정의
  - <jsp:setProperty> : 자바빈즈의 property 를 설정 (자바빈 클래스의 필드에 값을 넣는다.)
  - <jsp:getProperty> : 자바빈즈에서 property 를 얻음 (자바빈 클래스 객체의 필드값을 얻어온다.)
- <jsp:param> : 페이지 변수 전달
