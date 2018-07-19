
3.2、公钥认证管理
开发者向码云版本库写入最常用到的协议是 SSH 协议，因为 SSH 协议使用公钥认证，可以实现无口令访问，而若使用 HTTPS 协议每次身份认证时都需要提供口令。使用 SSH 公钥认证，就涉及到公钥的管理。

1.如何生成ssh公钥

你可以按如下命令来生成sshkey: 

ssh-keygen -t rsa -C "1302745968@qq.com"  

# Generating public/private rsa key pair...
# 三次回车即可生成 ssh key
查看你的 public key，并把他添加到码云（Gitee.com） SSH key添加地址

cat ~/.ssh/id_rsa.pub
# ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC6eNtGpNGwstc....
添加后，在终端（Terminal）中输入

ssh -T git@gitee.com
若返回

Welcome to Gitee.com, yourname!
则证明添加成功。