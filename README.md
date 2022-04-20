# BUPTGatewayLogin/北邮网关登录脚本  
A simple Bash shell runs under Linux CLI which can help to connect and disconnect to the Campus Network at BUPT.  
一个瞎写的能连接和断开连接北邮校园网的Bash脚本  
## Usage/用法  
### Before use/使用前
`chmod +x connect.sh disconnect.sh`
Run the given command to give the permission

### Storage personal information locally(Not Recommended)/在本地存储个人学号和密码（不推荐）  
Change the variable flag to 1 (`flag=1`), and assign usr and pw with your personal information(`usr=2010114514`, `pw=1919810`).  
把flag改成1(flag=1)， 然后把usr和pw分别输入你的网关账号和密码(usr=2010114514, pw=1919810)  
### Double-params/双参数  
./connect {StudentID} {GatewayPassword}  
./connect {学号} {网关密码}  

### Single-param/单参数
./connect {StudentID}
