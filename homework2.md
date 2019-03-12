## 3月7日实践作业

1. 在网络上下载一个已经设计好的登录界面(PSD格式)。制作为HTML格式,部署到Web服务器
2. 在上次作业(基于HTML的"人物介绍")基础上,增加CSS,美化页面,部署到服务器URL可以分享到群里

## 作业流程
### 作业二：
### 1. 基于上次作业的html文件，见homework1，设置外部css格式，并链接到html文档。以下是我修改过的html代码：
```
<!DOCTYPE html> 
<html> 
    <head>    
        <meta charset="UTF-8">    
        <meta name="author" content="FatalJoy">
        <title>Geralt of Rivia</title> 
        <link rel="stylesheet" href="css/geralt_1.css">
    </head> 
    
    <body> 
    <div class="container">
        <div id="ball" ></div>
        <header>
        <div class="item1", id="rect">  
            <h1> Geralt of Rivia </h1> 
        </div> 
        </header>

        <div id="nav">
            <ul>
                <li>Who is Geralt of Rivia</li>
                <br>
                <li>Geralt of Rivia, also known as:</li>
                <br>
                <li>The Wolven Storm</li>
                <br>
                <li>Relevant People</li>
            </ul>
        </div>

        <div class="item3">
            <div class="cite">
            <p><strong>Why men throw their lives away attacking an armed witcher... I'll never know. Something wrong with my face?</strong></p>
            <p><cite>-Geralt</cite></p> 
            </div>
        <main> 
            <hr>                    
            <div class="header">
                <h2>Who is Geralt of Rivia</h2>
            </div>                 
            <img src="http://www.gamerbolt.com/wp-content/uploads/2017/01/Geralt.jpg" width="100%" height="50%" alt="Typical Geralt">                
            <p><strong>Really?</strong>hhh</p>            
            


            <hr> 
            <div class="header">
                <h2>Geralt of Rivia, also known as:</h2>  
                <ul>
                    <li>the White Wolf</li>  
                    <li>Butcher of Blaviken</li> 
                </ul>             
        
            </div>           
            



            <article> 
                <div class="main">              
                    <p><a href="https://witcher.fandom.com/wiki/Geralt_of_Rivia">Geralt of Rivia</a> 
                    was a witcher, a monster hunter for hire, who possessed superhuman abilities
                    and was a master swordsman. During the Trial of the Grasses, Geralt exhibited unusual
                    tolerance for the mutagens that grant witchers their abilities.  Accordingly, Geralt was
                    subjected to further experimental mutagens which rendered his hair white and may have 
                    given him greater speed, strength, and stamina than his fellow witchers.
                    </p>
                </div>

                <div class="cite">
                    <p><b>...if I'm to choose between one evil and another, then I prefer not to choose at all.</b></p> 
                    <p><cite>-Geralt</cite></p>  
                </div>   
            </article>


                 <div class="main">
                    <hr>
                    <h2 title="Song of the White Wolf"><a href="https://www.musixmatch.com/lyrics/Sharm/The-Wolven-Storm-Priscilla-s-Song">The Wolven Storm</a></h2>
                    <p>            
                        These scars long have yearned for your tender caress<br>
                        To bind our fortunes, damn what the stars own<br>
                        Rend my heart open, then your love profess<br>
                        A winding, weaving fate to which we both atone<br>
                    </p>
                        You flee my dream come the morning<br>
                        Your scent - berries tart, lilac sweet<br>
                        To dream of raven locks entwisted, stormy<br>
                    </p>
                </div>

            <section>
                <div class="main">
                    <hr>                
                    <h2>Relevant People</h2>                
                    <p> 
                    <dl>
                        <dt><a href="https://witcher.fandom.com/wiki/Yennefer">Yennefer</a></dt>
                        <dd>Yennefer, born on Belleteyn in 1173, was a sorceress who lived in Vengerberg, the capital city of Aedirn. She was Geralt of Rivia's true love and a mother figure to Ciri</dd>
                        <dt><a href="https://witcher.fandom.com/wiki/Ciri">Ciri</a></dt>
                        <dd>Ciri was the sole princess of Cintra, and also Geralt's adopted daughter by the Law of Surprise.</dd>
                    </dl>
                    </p>
                </div>     
            </section> 
        </main>
        </div>
    <div class="item4">
    <footer>         
        <hr>        
        <p>Created by FatalJoy.</p>    
    </footer> 
    </div>
</div>
    </body> 
</html>
```

###2. 添加自定义的CSS Style，使用外部链接格式。以下为css代码：
```
.header, .cite, .main{    
  margin-left:auto;
  margin-right:auto;
}
body,html{
  margin:0;
  padding:0;
  width:100%;
  height:100%;
  display:table
}
body{
  margin: 0;
  padding: 100px;
	width:80%; 
	height:600px; 
	background: -webkit-linear-gradient(top, #fafafa, #6e2a2a);   /* 颜色渐变*/
		
	} 
  .item1 {
    background: #6e2a2a;
    grid-area: header;
    padding: 20px;
  }
  
  .item2 {
    background: rgb(255, 255, 255);
    grid-area: advert;

  }
  
  .item3 {
    background:#fafafa;
    grid-area: content;
    padding: 20px;
  }
  
  .item4 {
    background: #6e2a2a;
    grid-area: footer;
    color: #fff;
    padding: 20px;
  }
  
  .container {
    font-size: 0.8em;
    min-height: 600px;
    width: 100%;
    background:-webkit-linear-gradient(top, #6e2a2a,#fafafa);  
    display: grid;
    grid-template-columns: 1fr;
    grid-template-rows: 50px auto 1fr auto;
    grid-gap: 10px;
    grid-template-areas:
      "header"
      "advert"
      "content"
      "footer";
  }
  
  @media (min-width: 300px){
    .container{
      grid-template-columns: auto 1fr;
      grid-template-rows: auto 1fr auto;
      grid-template-areas:
        "advert header"
        "advert content"
        "advert footer";
    }
  }
  
  @media (min-width: 400px){
    .container{

    
      grid-template-areas:
        "advert header"
        "advert content"
        "advert footer";
    

    }
  }




.cite{
  color: #6e2a2a;
}



#rect {
    height: 50px;
    width: 100%;
    margin: 70px auto;
    border-radius: 10px;
    position: relative;
    color:#fff;
  }

#rect {
  animation-name: rainbow;
  animation-duration: 3s;
}

@keyframes rainbow {
  0% {
    background-color:#6e2a2a;
    color: #fff;
    top: 0px;
    left: 0px;
    
  }
  50% {
    background-color:#ffffff;
    top:80px;
    left: 100px;
    
  }
  100% {
    background-color:#6e2a2a;
    color: #fff;

    top:0px;
    left: 0px;
    
  }
}


  #ball {
    width: 70px;
    height: 70px;
    margin: 0 auto;
    position: fixed;
    left: 5%;
    border-radius: 50%;
    background: linear-gradient(
      35deg,
      #fafafa,
      #6e2a2a
    );
    animation-name: fade;
    animation-duration: 3s;
  }

  @keyframes fade {

    50% {
      left: 80%;
      opacity: 0.1;
    }
  }

  #nav {
    width: auto;
    height:100%;
    top:340px;
    margin: 0 auto;
    padding:5px;
    color: #fafafa;
    position: fixed;
    left: 7.9%;
    border-radius: 0;
    background: 
      #6e2a2a
    
  }
  ```
  
  ### 3.按照homework1的经验部署服务器。因为需要上传两个文件，所以要进行一些小小的改动。
  1. 在服务器中新建/data/www/css路径。
  2. 分别将html和css文件上传至/data/www/和/data/www/css中。
  3. 其余步骤按照homework1 中的部署操作进行。
  4. 访问188.131.236.127即可看到页面。
  
  ************
  ![web效果](/webjpg/homework_2.jpg)
