# 厦门大学校园二手交易平台-用户端
## 技术点
#### Vue.js + Spring + SpringMVC + Mybatis + Mysql
## 部署
1. 运行数据库MySQL，将20240107.sql导入到本地数据库中
2. 配置Tomcat，使Tomcat运行在8083端口
3. 配置Maven，找到独赢的package.json文件，使vue运行在8080端口
4. 配置服务器，使服务器运行在9090端口
- 1. 全局安装 Serve
```
npm install -g serve
```
- 2. 将项目提供的 9090.bat 文件放入要映射的文件夹，右键编辑，将第一行的 ``` E: ``` 修改为你的对应盘符，注意 ``` : ``` 符号不要省略，右键管理员运行。
5. 修改 src/main/resources/jdbc.properties 为你的数据库配置信息，将用户名和密码修改为本地MySQL的用户名和密码。
6. 在 Terminal 控制台 cd 进入 CourseDesionSpring 工程下的 vue_web 文件夹，并执行指令 ``` npm install ``` 安装 Vue.js 的依赖。
7. 启动tomcat，
8. 启动 dev
9. 打开 [链接](http://localhost:8080) 查看效果。