
3.2����Կ��֤����
�����������ư汾��д����õ���Э���� SSH Э�飬��Ϊ SSH Э��ʹ�ù�Կ��֤������ʵ���޿�����ʣ�����ʹ�� HTTPS Э��ÿ�������֤ʱ����Ҫ�ṩ���ʹ�� SSH ��Կ��֤�����漰����Կ�Ĺ���

1.�������ssh��Կ

����԰���������������sshkey: 

ssh-keygen -t rsa -C "1302745968@qq.com"  

# Generating public/private rsa key pair...
# ���λس��������� ssh key
�鿴��� public key����������ӵ����ƣ�Gitee.com�� SSH key��ӵ�ַ

cat ~/.ssh/id_rsa.pub
# ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC6eNtGpNGwstc....
��Ӻ����նˣ�Terminal��������

ssh -T git@gitee.com
������

Welcome to Gitee.com, yourname!
��֤����ӳɹ���