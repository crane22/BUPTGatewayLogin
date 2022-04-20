# BUPTGatewayLogin/北邮网关登录脚本  
A simple script runs on Bash shell which can help to connect and disconnect to the Campus Network at BUPT.  
一个瞎写的能连接和断开连接北邮校园网的Bash脚本，在只有命令行的时候很有用（逃  
## Usage/用法  
### Before use/使用前
`chmod +x connect.sh disconnect.sh`  
Run the given command to give the scripts permission to execute.  
不管你是git下来（不过你能git下来为啥还需要这个脚本）也好，复制粘贴下来也好，照着源码手撸出来也好，反正写完之后记得给脚本一个可执行权限，不然就跑不起来了  
### Storage personal information locally(Not Recommended)/在本地存储个人学号和密码（不推荐）  
Change the variable flag to 1 (`flag=1`), and assign usr and pw with your personal information(e.g.`usr=2010114514`, `pw=1919810`). Better use on reliable device.  
去代码里把flag改成1(`flag=1`)， 然后把usr和pw分别输入你的网关账号和密码(比如`usr=2010114514`, `pw=1919810`)，建议只在自己的电脑上使用  
### Double-params/双参数  
`./connect.sh {StudentID} {GatewayPassword}`  
`./connect.sh {学号} {网关密码}`  
### Single-param(Recommended)/单参数（推荐）  
`./connect.sh {StudentID}`  
You need to input your password later, and your password will not be storaged locally.  
`./connect.sh {学号}`  
这个方法比较安全，历史记录里只有学号，密码不会在本地存储。每次登录只需手输一下密码，兼顾了方便和安全。这样可以防止被滥用（虽然北邮已经不计校外流量了（不计流量真好，下数据集就不用花钱了），滥用的也只有你在校园网的浏览记录，但以防你和我一样有精神洁癖）  
### No-param/没参数  
`./connect.sh`  
You need to input your username and password later, and your information will not be storaged locally.  
这个就是每次登录都需要手动输入学号和密码了，本地没有记录相对安全，就是有点麻烦  
### Disconnect/断开连接
`./disconnect.sh`  
It is recommended to disconnect the connection after use.  
用完最好还是断开连接，尤其是好多人一块公用的服务器（我搞这个的原因也是某实验班给我们白嫖了算力，但因为只有ssh权限，所以用了一中午的时间糊出了这个。如果要是有更简洁的代码欢迎提issue）
### Acknowledgment/致谢  
Great thanks to YE Peida Experimental Class and @xytoki!  
感谢学校（尤其是某叶实验班）愿意给我们免费提供算力，如果不是因为这个我也不会糊这个脚本  
感谢晓羽( https://github.com/xytoki )和Linn提供的两种思路（虽然wget根本不是按某人的那种方法写的，需要专门用`--post-data=`来传输参数，查了很多资料我才搞定了wget的部分）。尤其是晓羽，帮我写好了curl的版本和差不多整个框架，基本开箱可用。当然，wget和curl选择的那个部分，我参考了z4h的( https://github.com/romkatv/zsh4humans )的安装代码。（顺带在这推荐一下z4h，真的很好用）之后就是自己顺便糊了一个联网检测出来，反正感觉wget比curl在这个用途上反人类多了，毕竟主要是用于下载的工具  
