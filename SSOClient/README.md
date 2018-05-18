### 1 单点登录client API jar
将SSOClient jar包形式引入APP libs中，所有的需要单点登录的app都需要依赖client。

### 2. Example

在需要单点登录的Web APP 的web.xml添加过滤器和logout功能：

```xml
  <filter>
    <filter-name>easy-sso-login</filter-name>
    <filter-class>easy.sso.client.SSOFilter</filter-class>
  </filter>

  <filter-mapping>
    <filter-name>easy-sso-login</filter-name>
    <url-pattern>*.jsp</url-pattern>
  </filter-mapping>
  
  <servlet>
    <servlet-name>easy-sso-logout</servlet-name>
    <servlet-class>easy.sso.client.LogoutServlet</servlet-class>
  </servlet>

  <servlet-mapping>
    <servlet-name>easy-sso-logout</servlet-name>
    <url-pattern>/logout</url-pattern>
  </servlet-mapping>
```