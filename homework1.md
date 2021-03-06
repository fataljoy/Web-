## 作业要求

1. 完成“任务介绍Web页面”，不使用css和模板，使用15个以上的常用标签
2. 学习Linux服务器的安装和apache/nginx服务器的配置
3. 将人物介绍页面部署到服务器
********
## 作业完成记录
### 1. 首先用html写一份人物介绍web页面，以下是我的代码

```
<!DOCTYPE html> 
<html> 
    <head>    
        <meta charset="UTF-8">    
        <meta name="author" content="FatalJoy">
        <title>Geralt of Rivia</title> 
    </head> 
    <body>    
        <header>        
            <h1> Geralt of Rivia </h1>  
            <p><strong>Why men throw their lives away attacking an armed witcher... I'll never know. Something wrong with my face?</strong></p>
            <p><cite>-Geralt</cite></p> 
        </header>
        <main> 
            <hr>
            <h2><em>Who is Geralt of Rivia</em></h2>                         
            <div>                
                <img src="http://www.gamerbolt.com/wp-content/uploads/2017/01/Geralt.jpg" width="50%" height="50%" alt="Typical Geralt">                
                <p><strong>Really?</strong>hhh</p>            
            </div> 
            <div>
                <hr> 
                <h2>Geralt of Rivia, also known as:</h2>               
                <ul>
                    <li>the White Wolf</li>  
                    <li>Butcher of Blaviken</li>
                </ul>          
            </div>           

            <article>               
                <p><a href="https://witcher.fandom.com/wiki/Geralt_of_Rivia">Geralt of Rivia</a> was a witcher, a monster hunter for hire, who possessed superhuman abilities<br> 
                    and was a master swordsman. During the Trial of the Grasses, Geralt exhibited unusual  <br>
                    tolerance for the mutagens that grant witchers their abilities.  Accordingly, Geralt was <br>
                    subjected to further experimental mutagens which rendered his hair white and may have <br>given him greater speed, strength, and stamina than his fellow witchers.
                </p>
                <p><b>...if I'm to choose between one evil and another, then I prefer not to choose at all.</b></p> 
                <p><cite>-Geralt</cite></p>                 
            </article>
            <hr>
            <h2 title="Song of the White Wolf"><a href="https://www.musixmatch.com/lyrics/Sharm/The-Wolven-Storm-Priscilla-s-Song">The Wolven Storm</a></h2>
            <pre>            
                These scars long have yearned for your tender caress
                To bind our fortunes, damn what the stars own
                Rend my heart open, then your love profess
                A winding, weaving fate to which we both atone
                    
                You flee my dream come the morning
                Your scent - berries tart, lilac sweet
                To dream of raven locks entwisted, stormy
            </pre>

            <section>
                    <hr>                
                <h2>Relevant People</h2>                
                <p> 
                    <dl>
                        <dt><a href="https://witcher.fandom.com/wiki/Yennefer">Yennefer</a></dt>
                        <dd>Yennefer, born on Belleteyn in 1173, was a sorceress who lived in Vengerberg, the capital <br>city of Aedirn. She was Geralt of Rivia's true love and a mother figure to Ciri</dd>
                        <dt><a href="https://witcher.fandom.com/wiki/Ciri">Ciri</a></dt>
                        <dd>Ciri was the sole princess of Cintra, and also Geralt's adopted daughter by the Law of Surprise.</dd>
                    </dl>
                </p>     
            </section> 
        </main>
    <footer>         
        <hr>        
        <p>Created by FatalJoy.</p>    
    </footer> 
    </body> 
</html>
```

### 2. 在腾讯云上购买最廉价的云服务器（1核1GB1Mbps），选择按量计费，并选择CentOS 7.5 64位
### 3. 在云服务器上搭建Nginx服务器（根据chaoqun的教程）

```
#先登录云服务器
#完成依赖关系处理
sudo yum install yum-utils

#进入目录
cd /etc/yum.repos.d/

#新建repo
vi nginx.repo

#在repo中键入该内容,按i键入
[nginx-stable] 
name=nginx stable repo 
baseurl=http://nginx.org/packages/centos/$releasever/$basearch/ 
gpgcheck=1 
enabled=1 
gpgkey=https://nginx.org/keys/nginx_signing.key
[nginx-mainline] 
name=nginx mainline repo 
baseurl=http://nginx.org/packages/mainline/centos/$releasever/$basearch/ 
gpgcheck=1 
enabled=0 
gpgkey=https://nginx.org/keys/nginx_signing.key

#保存并退出
esc, :wq

#安装nginx
sudo yum install nginx 

#nginx.conf可能在/usr/local/nginx/conf, /etc/nginx, /usr/local/etc/nginx中.
#开启nginx
nginx -c /etc/nginx/nginx.conf

#查看nginx.conf
cat /etc/nginx/nginx.conf

#查看最后一个文件
vi /etc/nginx/conf.d/default.conf

#添加映射到我们即将存放html文件的路径
#添加到原有location 下面一行,并删除或注释掉原有的location
    location / {        root   /data/www;    }
 
#创建新路径
mkdir /data/www/
```

### 4.将本地html文件上传到服务器
```
#打开本地终端，上传html文件到服务器，使用security copy命令，在服务器上覆盖并创建新文件
scp htmlfileaddress servername@serveraddress:/data/www/index.html
scp desktop/cc/geralt_of_rivia.html root@152.136.58.79:/data/www/index.html

#在服务器终端重新加载配置
nginx -s reload
```
*******
访问152.136.58.79即可看到web页面

******

![web效果](/webjpg/web_1.jpg)

*********

![web地址](/webjpg/webad_1.png)
