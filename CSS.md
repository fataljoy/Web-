## What is CSS

CSS(Cascading Style Sheets)  is a language for specifying how documents are presented to users — how they are styled, laid out, etc.

**********************

## How to apply your CSS to your HTML
**External stylesheet**
```
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>My CSS experiment</title>
    <link rel="stylesheet" href="style.css">
  </head>
  <body>
    <h1>Hello World!</h1>
    <p>This is my first CSS example</p>
  </body>
</html>


h1 {
  color: blue;
  background-color: yellow;
  border: 1px solid black;
}

p {
  color: red;
}
```



**Internal stylesheet**
```
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>My CSS experiment</title>
    <style>
      h1 {
        color: blue;
        background-color: yellow;
        border: 1px solid black;
      }

      p {
        color: red;
      }
    </style>
  </head>
  <body>
    <h1>Hello World!</h1>
    <p>This is my first CSS example</p>
  </body>
</html>
```


**Inline styles**
```
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>My CSS experiment</title>
  </head>
  <body>
    <h1 style="color: blue;background-color: yellow;border: 1px solid black;">Hello World!</h1>
    <p style="color:red;">This is my first CSS example</p>
  </body>
</html>
```

*********************
## CSS statements

* The @media at-rule content is applied only if the device which runs the browser matches the expressed condition;
* the @supports at-rule content is applied only if the browser actually supports the tested feature;
* the @document at-rule content is applied only if the current page matches some conditions.
```
@media (min-width: 801px) {
  body {
    margin: 0 auto;
    width: 800px;
  }
}
```

*****************

## Comments

Comments in CSS begin with /* and end with */.

**************

## Shorthand

Some properties like font, background, padding, border, and margin are called shorthand properties — this is because they allow you to set several property values in a single line, saving time and making your code neater in the process.


> in shorthand like padding and margin, the values are applied
> in the order top, right, bottom, left (the same order as an analog clock). There are also other 
> shorthand types, for example two values, which set for example
> the padding for top/bottom, then left/right
```
padding: 10px 15px 15px 5px;

padding-top: 10px;
padding-right: 15px;
padding-bottom: 15px;
padding-left: 5px;
```

or

```
background: red url(bg-graphic.png) 10px 10px repeat-x fixed;

background-color: red;
background-image: url(bg-graphic.png);
background-position: 10px 10px;
background-repeat: repeat-x;
background-scroll: fixed;
```

*****************

## Selectors

**Class selectors**

The class selector consists of a dot, '.', followed by a class name. A class name is any value, without spaces, placed within an HTML class attribute. It is up to you to choose a name for the class. It is also noteworthy that multiple elements in a document can have the same class value, and a single element can have multiple class names separated by white space.
```
<ul>
  <li class="first done">Create an HTML document</li>
  <li class="second done">Create a CSS style sheet</li>
  <li class="third">Link them all together</li>
</ul>

/* The element with the class "first" is bolded */
.first {
  font-weight: bold;
}

/* All the elements with the class "done" are strikethrough */
.done {
  text-decoration: line-through;
}
```

**ID selectors**

The ID selector consists of a hash/pound symbol (#), followed by the ID name of a given element. Any element can have a unique ID name set with the id attribute. It is up to you to choose an ID name. It's the most efficient way to select a single element.

```
<p id="rude"> — "Go away!"</p>

#rude {
  font-family: monospace;
  text-transform: uppercase;
}
```

**Universal selector**

The universal selector (*) is the ultimate joker. It allows selecting all elements on a page. As it is rarely used to apply a style to every element on a page, it is often used in combination with other selectors

>**Important:** Take care when using the universal selector. As it applies to all elements, using it in large web pages can have a >perceptible impact on performance: web pages display slower than expected. There are not many instances where you'd use this selector.

```
<div>
  <p>I think the containing box just needed
  a <strong>border</strong> or <em>something</em>,
  but this is getting <strong>out of hand</strong>!</p>
</div>

* {
  padding: 5px;
  border: 1px solid black;
  background: rgba(255,0,0,0.25)
}
```

**Presence and value attribute selectorsEdit**

* [attr] : This selector will select all elements with the attribute attr, whatever its value.
* [attr=val] : This selector will select all elements with the attribute attr, but only if its value is val.
* [attr~=val]: This selector will select all elements with the attribute attr, but only if  val is one of a space-separated list of words contained in attr's value. 
* [attr^=val] : This selector will select all elements with the attribute attr for which the value starts with val.
* [attr$=val] : This selector will select all elements with the attribute attr for which the value ends with val.
* [attr*=val] : This selector will select all elements with the attribute attr for which the value contains the substring val. (A substring is simply part of a string, e.g. "cat" is a substring in the string "caterpillar".) 


**Pseudo-classes**

:active
:checked
:default
:dir
:disabled
:empty
:enabled
:first
:first-child
:first-of-type
:fullscreen
:focus
:focus-within
:hover
:indeterminate
:in-range
:invalid
:lang
:last-child
:last-of-type
:left
:link
:matches()
:not
:nth-child
:nth-last-child
:nth-last-of-type
:nth-of-type
:only-child
:only-of-type
:optional
:out-of-range
:read-only
:read-write
:required
:right
:root
:scope
:target
:valid
:visited
```
<a href="https://www.github.com/" target="_blank"GITHUB</a>
/* We highlight the link when it is
   hovered over (mouse over), activated (mouse down)
   or focused (keyboard) */
a:hover,
a:active,
a:focus {
  color: darkred;
  text-decoration: none;
}
```

**Pseudo-elements**

Pseudo-elements are very much like pseudo-classes, but they have differences. They are keywords, this time preceded by two colons (::), that can be added to the end of selectors to select a certain part of an element.

::after
::before
::first-letter
::first-line
::selection
::backdrop

```
<ul>
  <li><a href="https://developer.mozilla.org/en-US/docs/Glossary/CSS">CSS</a> defined in the MDN glossary.</li>
  <li><a href="https://developer.mozilla.org/en-US/docs/Glossary/HTML">HTML</a> defined in the MDN glossary.</li>
</ul>

/* All elements with an attribute "href" with values
   starting with "http" will have an arrow added after their
   content (to indicate they are external links) */
[href^=http]::after {
  content: '⤴';
}
```


