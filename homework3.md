## 作业三
* 请每位同学使用HTML+CSS设计日程管理应用的前端页面。并将每个页面通过链接连接起来。
* 请大家复习HTML+CSS+JavaScript的基本知识。下次课提问。
*********************

### 日程管理的登录界面
* 登录界面沿用上次的login page，并将登录按钮链接到日程管理页面。
```
<!DOCTYPE html>
<html>

<head>

  <meta charset="UTF-8">
  <title>SSPKU日程管理 Login Page</title>
  <style>
		body,html{
			margin:0;
			padding:0;
			width:100%;
			height:100%;
			display:table;
			top: 0;
    		left: 0;
   			right: 0;
			bottom: 0;
		}
		body{
			background-image: url("png/bg.png");
			background-size: 1280px 768px;;
		} 
		#content{
			display:table-cell;
			vertical-align:middle;
			
		}
		.login-card{
			padding:40px;
			width:274px;
			background-color:rgb(255, 255, 255);
			margin:0 auto 0;
			box-shadow:0 2px 2px #000000;
		}

		.login-card input[type=submit]{
			width:35%;
			height:44px;
			display:block;
			margin-bottom:0;
			position:relative;
			border-radius:5px;
			
		}
		.login-card input[type=text],input[type=password]{
			height:44px;
			font-size:16px;
			width:100%;
			margin-bottom:10px;
			border-top:1px solid rgb(219, 219, 219);
			padding:0 8px;
			border-radius:5px;
			box-align:center;
		
		}

		.login-submit{
			color:rgb(134, 134, 134);
			background-color:#f7f7f7;
			width:40px;
			font-size:14px;
			font-weight:700;
			height:36px;
			padding:2 0px;
		}
		#log1{
			color:rgb(134, 134, 134);
			height:30px;
			width:314.5px;
			line-height:30px;
			overflow:hidden;
			left:463px;
			padding:20px;
			margin-left:0;
			background-color:#eaeaea;
			position:relative;
			box-shadow:0 0 2px #000000;
			text-indent:2%;
			top: 50%;
    		left: 50%;
    		margin-left: -177px;
    		margin-top: -15px;
		
			
		}
      #reset{
			color:#ffffff;
			text-align:center;
			position:absolute;
			top: 500px;
    		left: 550px;

		}
  </style>
</head>

<body>
		
<div id="content">
	<div id="log1">PKU日程管理系统</div>
	<div class="login-card">
	  <form name="login_form" method="post" action="sspku_sql.html">
		<input type="text" name="joy_user" placeholder="请输入用户名" id="joy_user">
		<input type="password" name="joy_pass" placeholder="请输入密码" id="joy_pass">
		<input type="submit" name="accept" class="login-submit" value="登录" id="login">
	  </form>
	</div>
	<div id="reset">忘记密码？</div>
</div>

</body>
</html>
```

### 登录界面展示
* 点击登录可跳转至日程管理界面
![login](/webjpg/login_sql.jpg)


### 日程管理HTML界面设计
* 采用日历的形式
* 可在日历中直接加入事项
```
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8" name="viewport" content="width=device-width,initial-scale=1.0">
	<title>SSPKU-日程管理</title>
	<link href="sql_style.css" rel="stylesheet">
</head>
<body>
<div class="calendar-container">
    <div class="calendar-header">
        <h1>
       3月
      <button>▾</button>
    </h1>
        <p>2019</p>
    </div>
    <div class="calendar">
        <span class="day-name">周日</span>
        <span class="day-name">周一</span>
        <span class="day-name">周二</span>
        <span class="day-name">周三</span>
        <span class="day-name">周四</span>
        <span class="day-name">周五</span>
        <span class="day-name">周六</span>
        
        <div class="day">30</div>
        <div class="day">31</div>
        <div class="day">1</div>
        <div class="day">2</div>
        <div class="day">3</div>
        <div class="day">4</div>
        <div class="day">5</div>
        <div class="day">6</div>
        <div class="day">7</div>
        <div class="day">8</div>
        <div class="day">9</div>
        <div class="day">10</div>
        <div class="day">11</div>
        <div class="day">12</div>
        <div class="day">13</div>
        <div class="day">14</div>
        <div class="day">15</div>
        <div class="day">16</div>
        <div class="day">17</div>
        <div class="day">18</div>
        <div class="day">19</div>
        <div class="day">20</div>
        <div class="day">21</div>
        <div class="day">22</div>
        <div class="day">23</div>
        <div class="day">24</div>
        <div class="day">25</div>
        <div class="day">26</div>
        <div class="day">27</div>
        <div class="day">28</div>
        <div class="day">29</div>
        <div class="day">30</div>
        <div class="day">31</div>
        <div class="day">1</div>
        <div class="day">2</div>
        <section class="important">和标协高主任开会</section>
        <section class="urgent">论文定稿日</section>
        <section class="info">与阿里飞天文档洽谈</section>
        <input type="text" name="inf" placeholder="请输入内容" id="info1">
        <input type="text" name="inf" id="info2">
        <input type="text" name="inf" id="info3">
        <input type="text" name="inf" id="info4">
        <input type="text" name="inf" id="info5">
        <input type="text" name="inf" id="info6">


    </div>
</div>

</body>
```

### 日程管理的CSS文件

```
html,
body {
    width: 80%;
    height: 80%;
    top: 50%;
    left: 50%;
    margin: 10%;
    margin-top: 10px;

}
body {
    background: #f5f7fa;
    padding: 20px 20px;
    box-sizing: border-box;
    color: #94bcf3;
}
.calendar {
    display: grid;
    width: 100%;
    grid-template-columns: repeat(7, minmax(80px, 1fr));
    grid-template-rows: 40px;
    grid-auto-rows: 100px;
    overflow: auto;
}
.calendar-container {
    width: 100%;
    margin: auto;
    overflow: hidden;
    box-shadow: 0 2px 20px rgba(0, 0, 0, 0.1);
    border-radius: 10px;
    background: rgb(255, 255, 255);
    max-width: 1200px;
}
.calendar-header {
    text-align: center;
    padding: 20px 0;
    background: linear-gradient(to bottom, #fafbfd 0%, rgba(255, 255, 255, 0) 100%);
    border-bottom: 1px solid rgba(166, 168, 179, 0.12);
}
.calendar-header h1 {
    margin: 0;
    font-size: 18px;
}
.calendar-header p {
    margin: 5px 0 0 0;
    font-size: 13px;
    font-weight: 600;
    color: rgba(103, 117, 138, 0.4);
}
.calendar-header button {
    background: 0;
    border: 0;
    padding: 0;
    color: rgba(66, 77, 92, 0.7);
    cursor: pointer;
    outline: 0;
}
.day {
    border-bottom: 1px solid rgba(79, 82, 95, 0.12);
    border-right: 1px solid rgba(79, 82, 95, 0.12);
    text-align: left;
    padding: 14px 20px;
    letter-spacing: 1px;
    font-size: 12px;
    box-sizing: border-box;
    color: #94bcf3;
    position: relative;
    pointer-events: none;
    z-index: 1;
}
.day:nth-of-type(7n + 7) {
    border-right: 0;
}
.day:nth-of-type(n + 2):nth-of-type(-n + 7) {
    grid-row: 2;
}
.day:nth-of-type(n + 9):nth-of-type(-n + 14) {
    grid-row: 3;
}
.day:nth-of-type(n + 16):nth-of-type(-n + 21) {
    grid-row: 4;
}
.day:nth-of-type(n + 23):nth-of-type(-n + 28) {
    grid-row: 5;
}
.day:nth-of-type(n + 30):nth-of-type(-n + 35) {
    grid-row: 6;
}
.day:nth-of-type(7n + 1) {
    grid-column: 1/1;
}
.day:nth-of-type(7n + 2) {
    grid-column: 2/2;
}
.day:nth-of-type(7n + 3) {
    grid-column: 3/3;
}
.day:nth-of-type(7n + 4) {
    grid-column: 4/4;
}
.day:nth-of-type(7n + 5) {
    grid-column: 5/5;
}
.day:nth-of-type(7n + 6) {
    grid-column: 6/6;
}
.day:nth-of-type(7n + 7) {
    grid-column: 7/7;
}
.day-name {
    font-size: 12px;
    color: #94bcf3;
    text-align: center;
    border-bottom: 1px solid rgba(166, 168, 179, 0.12);
    line-height: 50px;
    font-weight: 500;

}

.important {
   
    grid-column: 4 / span 1;
    grid-row: 3;
    background: #fcf3e6;
    align-self: center;
    padding-top: 50%;
    padding-left:10px;
    padding-right:10px;
    height: 50%;
    color: #fc9b10;
    
}
.urgent {
   
    grid-column: 2 / span 1;
    grid-row: 3;
    padding-top: 50%;
    padding-left:10px;
    padding-right:10px;
    height: 50%;
    background: rgba(255, 228, 234, 0.7);
    align-self: center;
    color: #f8254e;
}
.info {
    grid-column: 4 / span 1;
    grid-row: 6;
    padding-top: 50%;
    padding-left:10px;
    padding-right:10px;
    height: 50%;
    background: rgba(231, 239, 255, 0.7);
    align-self: center;
    color: #0a5eff;
}

#info1{
    grid-column: 2 / span 1;
    grid-row: 2 / span 1;
    border: 0;
    height: 100%;
    vertical-align: center;
    background: rgba(231, 239, 255, 0.7);
    align-self: center;
    color: #0a5eff;
}
#info2{
    grid-column: 3 / span 1;
    grid-row: 2 / span 1;
    border: 0;
    height: 100%;
    vertical-align: center;
}

#info3{
    grid-column: 4 / span 1;
    grid-row: 2 / span 1;
    border: 0;
    height: 100%;
    vertical-align: center;
}

#info4{
    grid-column: 5 / span 1;
    grid-row: 2 / span 1;
    border: 0;
    height: 100%;
    vertical-align: center;
}

#info5{
    grid-column: 6 / span 1;
    grid-row: 2 / span 1;
    border: 0;
    height: 100%;
    vertical-align: center;
}

#info6{
    grid-column: 7 / span 1;
    grid-row: 2 / span 1;
    border: 0;
    height: 100%;
    vertical-align: center;
}

#info7{
    grid-column: 2 / span 1;
    grid-row: 5 / span 1;
    border: 0;
    height: 100%;
    vertical-align: center;
}
#info8{
    grid-column: 3 / span 1;
    grid-row: 4 / span 1;
    border: 0;
    height: 100%;
    vertical-align: center;
}
```


### 日程管理界面展示
![login](/webjpg/sql.jpg)
