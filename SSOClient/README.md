### 1 单点登录client API jar
将SSOClient jar包形式引入APP libs中，所有的需要单点登录的app都需要依赖client。

### 2. Example
在需要单点登录的Web APP 的web.xml添加过滤器:
```xml
  <filter>
    <filter-name>easy-sso</filter-name>
    <filter-class>easy.sso.client.SSOFilter</filter-class>
  </filter>

  <filter-mapping>
    <filter-name>easy-sso</filter-name>
    <url-pattern>*.jsp</url-pattern>
  </filter-mapping>
```