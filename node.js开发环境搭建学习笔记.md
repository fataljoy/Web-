# node.js开发环境搭建学习笔记



首先需要一台MAC......



### 1. 安装一个nvm



```
$ curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.25.2/install.sh | bash
```

nvm的全称是 Node Version Manager，之所以需要这个工具，是因为Node.js的各种特性都没有稳定下来，所以我们经常由于老项目或尝新的原因，需要切换各种版本。



安装完成后，你的 shell 里面应该就有个 nvm 命令了，调用它试试



```
$ nvm
```



当看到有输出时，则 nvm 安装成功。



### 2. 安装Node.js



通过nvm安装任意版本的node



```
$ nvm install 0.12.0
```



于是你就会看到一段非常快速进度条:



```
######################################################################## 100.0%
Now using node v0.12.0
```



安装完成后，查看一下



```
$ nvm ls
```



这时候可以看到自己安装的所有 Node.js 版本，输出应如下：



```
->       v6.0.0
         v8.0.0
default -> 6.0.0 (-> v6.0.0)
node -> stable (-> v8.0.0) (default)
stable -> 8.0 (-> v8.0.0) (default)
iojs -> N/A (default)
lts/* -> lts/carbon (-> N/A)
lts/argon -> v4.9.1 (-> N/A)
lts/boron -> v6.14.2 (-> N/A)
lts/carbon -> v8.11.2 (-> N/A)
```



箭头表示目前使用的版本



可以指定nvm使用什么版本



```
nvm use v8.0.0
```



然后再次查看，这时候小箭头应该出现了。



OK，我们在终端中输入



```
$ node
```



REPL(read–eval–print loop) 应该就出来了，那我们就成功了。



随便敲两行命令玩玩吧。



比如 > while (true) {}，这时你的 CPU 应该会飚高。



### 可能会出现的问题



上述过程完成后，有时会出现，当开启一个新的 shell 窗口时，找不到 node 命令的情况。



这种情况一般来自两个原因



一、shell 不知道 nvm 的存在



二、nvm 已经存在，但是没有 default 的 Node.js 版本可用。



### 解决方式：



一、检查 ~/.profile 或者 ~/.bash_profile 中有没有这样两句



```
export NVM_DIR="/Users/YOURUSERNAME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
```



没有的话，加进去。

这两句会在 bash 启动的时候被调用，然后注册 nvm 命令。



二、调用



```
$ nvm ls
```



看看像不像上述图1中一样，有 default 的指向。



如果没有的话，执行



```
$ nvm alias default 0.12
```



再



```
$ nvm ls
```



看一下