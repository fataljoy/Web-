# Javascript小tips

1. 给 `script` 元素设置 `defer` 属性可以让浏览器提前处理页面部分，在页面处理结束并做好显示准备时再处理脚本部分，这样可以提高页面载入的速度。

 <script defer="defer">
 //content
 </script>

2. 将 `script` 元素放进 `head` 元素中有利于提高网页的可维护性，放在 `body` 元素的最末尾可以提高页面的加载速度。不管采用哪一种方法，必须确保脚本位置的一致性，要么全部放在 `head` 元素中，要么全部放在 `body` 元素的最末尾处。

   

3. 用关键字 `var` 定义变量，而且是局部变量。如果不使用 `var` ，那么变量是全局变量，可以在函数内外访问变量。一般不建议设置全局变量，因为容易造成数据丢失。

   

4. 最好为不支持或者未打开 `JS` 的用户提供替代选项，可以借助于 `noscript` 元素。如果浏览器支持 `JS` ,就会忽略 `noscript` 中的内容，如果不支持 `JS`, 就会选择 `noscript` 中的内容。

 <script>
 function sayHello() {
 document.writeln("Hello JS");
 }
 </script>

```HTML
<noscript>
     <p>Hello JS</p>
</noscript>
```



5. 利用 `toString()` 方法可以将十进制整数改成八进制或者十六进制。
    ```var intNumber = 16;
    var octNumber = intNumber.toString(8);
    var hexNumber = intNumber.toString(16);```
    ```

   

6. 为了缩减 `JS` 代码，我们可以使用一些在线压缩工具，比如 [Packer](https://link.jianshu.com?t=http://dean.edwards.name/packer/).

   

7. `==` 运算符会自动转换变量的数据类型，然后判断相同数据类型的值是否相等。 `===` 是更为严格的一种相同判断，只有在操作数的数值相同且类型相同的情况下才会返回 `true`。`!=` 和 `!==` 的区别也是如此。

   

8. `Array` 对象有 `4` 个用于维护队列和列表的方法： `push, pop, shift, unshift`。`push` 方法能将元素添加到数组末尾，`unshift` 方法能将元素添加到数组开头，`pop` 方法用于移除数组的最后一个元素，`shift` 方法则是移除第一个元素。

