# 使用CentOS安装MySQL

 在CentOS中默认安装有MariaDB，这个是MySQL的分支，但为了需要，还是要在系统中安装MySQL，而且安装完成之后可以直接覆盖掉MariaDB。



### 1 .下载并安装MySQL官方的 Yum Repository

```
[root@localhost ~]# wget -i -c http://dev.mysql.com/get/mysql57-community-release-el7-10.noarch.rpm
```

  

* 使用上面的命令就直接下载了安装用的Yum Repository，大概25KB的样子，然后就可以直接yum安装了。

```
[root@localhost ~]# yum -y install mysql57-community-release-el7-10.noarch.rpm
```

 

* 之后就开始安装MySQL服务器。

```
[root@localhost ~]# yum -y install mysql-community-server
```

* 这步可能会花些时间，安装完成后就会覆盖掉之前的mariadb。

![img](http://www.phpbiji.cn/data/upload/ueditor/20180322/5ab3526adf581.png)

* 至此MySQL就安装完成了，然后是对MySQL的一些设置。



### 2. MySQL数据库设置

* 首先启动MySQL

```
[root@localhost ~]# systemctl start  mysqld.service
```

  

* 查看MySQL运行状态，运行状态如图：

```
[root@localhost ~]# systemctl status mysqld.service
```

![img](http://www.phpbiji.cn/data/upload/ueditor/20180322/5ab3526b1aa40.png)



* 此时MySQL已经开始正常运行，不过要想进入MySQL还得先找出此时root用户的密码，通过如下命令可以在日志文件中找出密码：

```
[root@localhost ~]# grep "password" /var/log/mysqld.log
```

![img](http://www.phpbiji.cn/data/upload/ueditor/20180322/5ab3526b29b34.png)

  

* 使用如下命令进入数据库：

```
[root@localhost ~]# mysql -uroot -p
```

  

* 输入初始密码，此时不能做任何事情，因为MySQL默认必须修改密码之后才能操作数据库：

```
mysql> ALTER USER 'root'@'localhost' IDENTIFIED BY 'new password';
```

  

> 注意：新密码设置的时候如果设置的过于简单会报错：

![img](http://www.phpbiji.cn/data/upload/ueditor/20180322/5ab3526b3af82.png)

> 原因是因为MySQL有密码设置的规范，具体是与validate_password_policy的值有关：

 ![img](http://www.phpbiji.cn/data/upload/ueditor/20180322/5ab3526b4d59a.png)

  

* MySQL完整的初始密码规则可以通过如下命令查看：

```
mysql> SHOW VARIABLES LIKE 'validate_password%';+--------------------------------------+-------+
| Variable_name                        | Value |
+--------------------------------------+-------+
| validate_password_check_user_name    | OFF   |
| validate_password_dictionary_file    |       |
| validate_password_length             | 4     |
| validate_password_mixed_case_count   | 1     |
| validate_password_number_count       | 1     |
| validate_password_policy             | LOW   |
| validate_password_special_char_count | 1     |
+--------------------------------------+-------+7 rows in set (0.01 sec)
```



* 密码的长度是由validate_password_length决定的，而validate_password_length的计算公式是：

```
validate_password_length = validate_password_number_count + validate_password_special_char_count + (2 * validate_password_mixed_case_count)
```



* 我的是已经修改过的，初始情况下第一个的值是ON，validate_password_length是8。可以通过如下命令修改：

```
mysql> set global validate_password_policy=0;
mysql> set global validate_password_length=1;
```



* 设置之后就是我上面查出来的那几个值了，此时密码就可以设置的很简单，例如1234之类的。到此数据库的密码设置就完成了。

  

> 注意：因为安装了Yum Repository，以后每次yum操作都会自动更新，需要把这个卸载掉：

```
[root@localhost ~]# yum -y remove mysql57-community-release-el7-10.noarch
```

此时才算真的完成了。