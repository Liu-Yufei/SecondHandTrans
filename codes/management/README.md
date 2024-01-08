# 厦门大学校园二手交易系统-管理端
## 技术点
SpringBoot + Servlet + Mybatis + Mysql
## 部署
1. 运行数据库MySQL，将20240107.sql导入到本地数据库中（如用户端测试时已做，则不需要再进行操作）
2. 配置Tomcat，使Tomcat运行在8081端口
3. 修改 src/main/resources/mybatis-config.xml 文件里的数据库配置，将用户名和密码修改为本地MySQL的用户名密码。
4. 运行Tomcat
5. 打开[链接](http://localhost:8081)查看效果