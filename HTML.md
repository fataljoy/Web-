## What is HTML

超文本标记语言（HyperText Markup Language）是一种用于创建网页的标准标记语言。

**always use lowercase tags**
```
<!DOCTYPE html> 
  <html>    
    <head>        
      <meta charset="utf-8">        
      <!--  CSS quote -->        
      <!--  JS quote -->        
      <title>Hello HTML</title>    
    </head>    
    <body>
      <h1> a line of text</h1>        
      <p>a paragraph</p>    
    </body>    
    <!--  JS quote --> 
  </html>
  ```
  
  ***************
## HTML Elements
**html headings**
* Browsers automatically add some white space (a margin) before and after a heading.
* Search engines use the headings to index the structure and content of your web pages.
* The \<hr> element is used to separate content (or * define a change) in an HTML page:
```
<h1>This is heading 1</h1>
<h2>This is heading 2</h2>
<h3>This is heading 3</h3>
<h6>This is Heading 6</h6>
<hr>
<h1 style="font-size:60px;">Heading 1</h1>
<hr>
```

**html paragraghs**
* Use \<br> if you want a line break (a new line) without starting a new paragraph:
* The text inside a \<pre> element is displayed in a fixed-width font (usually Courier), and it preserves both spaces and line breaks:
```
<p>This is a paragraph.</p>
<p>This is another paragraph.</p>
<p>This is<br>a paragraph<br>with line breaks.</p>
<pre>
  My Bonnie lies over the ocean.

  My Bonnie lies over the sea.

  My Bonnie lies over the ocean.

  Oh, bring back my Bonnie to me.
</pre>
```

**html links**

targrt attributes
* blank - Opens the linked document in a new window or tab
* self - Opens the linked document in the same window/tab as it was clicked (this is default)
* parent - Opens the linked document in the parent frame
* top - Opens the linked document in the full body of the window

```
<a href="https://www.fataljoy.com">This is a link</a>
<a href="https://www.fataljoy.com/" target="_blank">Visit Joy's homepage!</a>
```

**html images**
```
<img src="fataljoy.jpg" alt="fataljoy" width="1280" height="768">
```

**html buttons**
```
<button>Click me</button>
```

**html lists**
```
<ul>
  <li>Coffee</li>
  <li>Tea</li>
  <li>Milk</li>
</ul>

<ol>
  <li>Monday</li>
  <li>Tuesday</li>
  <li>Wednesday</li>
</ol>

<dl>
  <dt>Coffee</dt>
  <dd>Coffe is bitter</dd>
  <dt>Tea</dt>
  <dd>Tea is bitter, too</dd>
  <dt>Milk</dt>
  <dd>Milk is Sweet</dd>
</dl>
```

**HTML Iframes**

An iframe is used to display a web page within a web page.
```
<iframe src="demo_iframe.htm" name="iframe_a"></iframe>
<p><a href="https://www.fataljoy.com" target="iframe_a">fataljoy.com</a></p>
```

**HTML Header**
* \<head>	Defines information about the document
* \<title>	Defines the title of a document
* \<base>	Defines a default address or a default target for all links on a page
* \<link>	Defines the relationship between a document and an external resource
* \<meta>	Defines metadata about an HTML document
* \<script>	Defines a client-side script
* \<style>	Defines style information for a document

```
<meta charset="UTF-8">
<meta name="description" content="Free Web tutorials">
<meta name="keywords" content="HTML,CSS,XML,JavaScript">
<meta name="author" content="John Doe">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script>
function myFunction {
  document.getElementById("demo").innerHTML = "Hello JavaScript!";
}
</script>
```

**HTML Layouts**

!(webjpg/layout.jpg)
* \<header> - Defines a header for a document or a section
* \<nav> - Defines a container for navigation links
* \<section> - Defines a section in a document
* \<article> - Defines an independent self-contained article
* \<aside> - Defines content aside from the content (like a sidebar)
* \<footer> - Defines a footer for a document or a section
* \<details> - Defines additional details
* \<summary> - Defines a heading for the \<details> element


**Nested HTML Elements**

HTML elements can be nested (elements can contain elements).
```
<html>
<body>

<h1>My First Heading</h1>
<p>My first paragraph.</p>

</body>
</html>
```

**Empty HTML Elements**
* HTML elements with no content are called empty elements.
* Empty elements can be "closed" in the opening tag like this: \<br />.
\<img>
```
<p>This is a <br> paragraph with a line break.</p>
```

****************
## HTML Attributes
* All HTML elements can have attributes
* Attributes provide additional information about an element
* Attributes are always specified in the start tag
* Attributes usually come in name/value pairs like: name="value"

**The href Attribute**
```
<a href="https://www.fataljoy.com">This is a link</a>
```

**The src Attribute**
```
<img src="img_girl.jpg">
```

**The width and height Attributes**
* usually with px
```
<img src="img_girl.jpg" width="500" height="600">
```

**The alt Attribute**
* The alt attribute specifies an alternative text to be used, when an image cannot be displayed.
```
<img src="img_girl.jpg" alt="Girl with a jacket">
```

**The style Attribute**
* The style attribute is used to specify the styling of an element, like color, font, size etc.
```
<p style="color:red">I am a paragraph</p>
```

**The lang Attribute**
* The language of the document can be declared in the \<html> tag.
* Declaring a language is important for accessibility applications (screen readers) and search engines:
```
<html lang="en-US">
```
  
**The title Attribute**
* Here, a title attribute is added to the \<p> element. 
* The value of the title attribute will be displayed as a tooltip when you mouse over the paragraph:
  
```
<p title="I'm a tooltip">
This is a paragraph.
</p>
```

**The Class Attribute**
* all HTML elements with the same class attribute will have the same format and style.
* HTML elements can have more than one class name, each class name must be separated by a space.
```
<div class="cities">
  <h2>London</h2>
  <p>London is the capital of England.</p>
</div>
<h2 class="city main">London</h2>

<style>
.city {
  background-color: tomato;
  color: white;
  padding: 10px;
} 
</style>
```

**HTML The id Attribute**

An HTML element can only have one unique id that belongs to that single element, while a class name can be used by multiple elements:
```
#myHeader {
  background-color: lightblue;
  color: black;
  padding: 40px;
  text-align: center;
}
```


**Summary for Attribute**
* All HTML elements can have attributes
* The title attribute provides additional "tool-tip" information
* The href attribute provides address information for links
* The width and height attributes provide size information for images
* The alt attribute provides text for screen readers
* Always use lowercase attribute names
* Always quote attribute values with double quotes

**************
## HTML Text Formatting Elements
* \<b>	Defines bold text =\<strong>
* \<em>	Defines emphasized text =\<i>
* \<i>	Defines italic text
* \<small>	Defines smaller text
* \<strong>	Defines important text
* \<sub>	Defines subscripted text
* \<sup>	Defines superscripted text
* \<ins>	Defines inserted text
* \<del>	Defines deleted text
* \<mark>	Defines marked/highlighted text

****************
## HTML Quotation and Citation Elements
* \<abbr>	Defines an abbreviation or acronym
* \<address>	Defines contact information for the author/owner of a document
* \<bdo>	Defines the text direction
* \<blockquote>	Defines a section that is quoted from another source
* \<cite>	Defines the title of a work
* \<q>	Defines a short inline quotation
```
<blockquote cite="http://www.worldwildlife.org/who/index.html">
For 50 years, WWF has been protecting the future of nature.
The world's leading conservation organization,
WWF works in 100 countries and is supported by
1.2 million members in the United States and
close to 5 million globally.
</blockquote>
<p>The <abbr title="World Health Organization">WHO</abbr> was founded in 1948.</p>
```

************************
## HTML Layout Elements
* \<header> - Defines a header for a document or a section
* \<nav> - Defines a container for navigation links
* \<section> - Defines a section in a document
* \<article> - Defines an independent self-contained article
* \<aside> - Defines content aside from the content (like a sidebar)
* \<footer> - Defines a footer for a document or a section
* \<details> - Defines additional details
* \<summary> - Defines a heading for the \<details> element
  
