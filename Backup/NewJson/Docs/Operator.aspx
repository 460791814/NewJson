<%@ Page Title="运算符优先级" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Operator.aspx.cs" Inherits="NewJson.Docs.Operator" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<meta name="Keywords" content="运算符优先级,常用对照表">
<meta name="Description" content="运算符优先级,常用对照表">
   <link href="/Css/docs/basic.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">
 <div class="panel panel-default">
        <div class="panel-heading">
            <div class="media">
                <div class="media-body">
                    <h4 class="media-heading">运算符优先级</h4>
                </div>
            </div>
        </div>
        <div class="panel-body">
        								<p>快速索引：</p>
<div class="btn-group">
    <a class="btn" href="#java_">Java</a>
    <a class="btn" href="#cpp_">C++</a>
    <a class="btn" href="#c_">C语言</a>
    <a class="btn" href="#php_">PHP</a>
	<a class="btn" href="#python_">Python</a>
</div>
<a name="java_"></a>
<div class="lang_op" id="java_">
<table class="toolTable table" width="100%" cellspacing="0" cellpadding="0">
<caption>Java 运算符优先级</caption>
<tbody><tr>
<th>运算符</th>
<th>优先级</th>
</tr>
<tr>
<td>postfix</td>
<td><code><em>expr</em>++ <em>expr</em>--</code></td>
</tr>
<tr>
<td>unary</td>
<td><code>++<em>expr</em> --<em>expr</em> +<em>expr</em> -<em>expr</em> ~ !</code></td>
</tr>
<tr>
<td>multiplicative</td>
<td><code>* / %</code></td>
</tr>
<tr>
<td>additive</td>
<td><code>+ -</code></td>
</tr>
<tr>
<td>shift</td>
<td><code>&lt;&lt; &gt;&gt; &gt;&gt;&gt;</code></td>
</tr>
<tr>
<td>relational</td>
<td><code>&lt; &gt; &lt;= &gt;= instanceof</code></td>
</tr>
<tr>
<td>equality</td>
<td><code>== !=</code></td>
</tr>
<tr>
<td>bitwise AND</td>
<td><code>&amp;</code></td>
</tr>
<tr>
<td>bitwise exclusive OR</td>
<td><code>^</code></td>
</tr>
<tr>
<td>bitwise inclusive OR</td>
<td><code>|</code></td>
</tr>
<tr>
<td>logical AND</td>
<td><code>&amp;&amp;</code></td>
</tr>
<tr>
<td>logical OR</td>
<td><code>||</code></td>
</tr>
<tr>
<td>ternary</td>
<td><code>? :</code></td>
</tr>
<tr>
<td>assignment</td>
<td><code>= += -= *= /= %= &amp;= ^= |= &lt;&lt;= &gt;&gt;= &gt;&gt;&gt;=</code></td>
</tr>
</tbody></table>
</div>
<a name="cpp_"></a>
 <div class="lang_op" id="cpp_"> 
   <table class="toolTable table" width="100%" cellspacing="0" cellpadding="0">
	<caption>C++运算符优先级</caption>
<tbody><tr>
<th style="text-align: left"> Precedence
</th>
<th style="text-align: left"> Operator
</th>
<th style="text-align: left"> Description
</th>
<th style="text-align: left"> Associativity
</th></tr>
<tr>
<th> 1
</th>
<td> <code>::</code>
</td>
<td> Scope resolution
</td>
<td style="vertical-align: top" rowspan="6"> Left-to-right
</td></tr>
<tr>
<th rowspan="5"> 2
</th>
<td style="border-bottom-style: none"> <code>++</code>&nbsp;&nbsp; <code>--</code>
</td>
<td style="border-bottom-style: none"> Suffix/postfix increment and decrement
</td></tr>
<tr>
<td style="border-bottom-style: none; border-top-style: none"> <code>()</code>
</td>
<td style="border-bottom-style: none; border-top-style: none"> Function call
</td></tr>
<tr>
<td style="border-bottom-style: none; border-top-style: none"> <code>[]</code>
</td>
<td style="border-bottom-style: none; border-top-style: none"> Array subscripting
</td></tr>
<tr>
<td style="border-bottom-style: none; border-top-style: none"> <code>.</code>
</td>
<td style="border-bottom-style: none; border-top-style: none"> Element selection by reference
</td></tr>
<tr>
<td style="border-bottom-style: none; border-top-style: none"> <code>−&gt;</code>
</td>
<td style="border-bottom-style: none; border-top-style: none"> Element selection through pointer
</td></tr>
<tr>
<th rowspan="9"> 3
</th>
<td style="border-bottom-style: none"> <code>++</code>&nbsp;&nbsp; <code>--</code>
</td>
<td style="border-bottom-style: none"> Prefix increment and decrement
</td>
<td style="vertical-align: top" rowspan="9"> Right-to-left
</td></tr>
<tr>
<td style="border-bottom-style: none; border-top-style: none"> <code>+</code>&nbsp;&nbsp; <code>−</code>
</td>
<td style="border-bottom-style: none; border-top-style: none"> Unary plus and minus
</td></tr>
<tr>
<td style="border-bottom-style: none; border-top-style: none"> <code>!</code>&nbsp;&nbsp; <code>~</code>
</td>
<td style="border-bottom-style: none; border-top-style: none"> Logical NOT and bitwise NOT
</td></tr>
<tr>
<td style="border-bottom-style: none; border-top-style: none"> <code>(<i>type</i>)</code>
</td>
<td style="border-bottom-style: none; border-top-style: none"> Type cast
</td></tr>
<tr>
<td style="border-bottom-style: none; border-top-style: none"> <code>*</code>
</td>
<td style="border-bottom-style: none; border-top-style: none"> Indirection (dereference)
</td></tr>
<tr>
<td style="border-bottom-style: none; border-top-style: none"> <code>&amp;</code>
</td>
<td style="border-bottom-style: none; border-top-style: none"> Address-of
</td></tr>
<tr>
<td style="border-bottom-style: none; border-top-style: none"> <code>sizeof</code>
</td>
<td style="border-bottom-style: none; border-top-style: none"> Size-of
</td></tr>
<tr>
<td style="border-bottom-style: none; border-top-style: none"> <code>new</code>, <code>new[]</code>
</td>
<td style="border-bottom-style: none; border-top-style: none"> Dynamic memory allocation
</td></tr>
<tr>
<td style="border-top-style: none"> <code>delete</code>, <code>delete[]</code>
</td>
<td style="border-top-style: none"> Dynamic memory deallocation
</td></tr>
<tr>
<th> 4
</th>
<td> <code>.*</code>&nbsp;&nbsp; <code>-&gt;*</code>
</td>
<td> Pointer to member
</td>
<td style="vertical-align: top" rowspan="12"> Left-to-right
</td></tr>
<tr>
<th> 5
</th>
<td> <code>*</code>&nbsp;&nbsp; <code>/</code>&nbsp;&nbsp; <code>%</code>
</td>
<td> Multiplication, division, and remainder
</td></tr>
<tr>
<th> 6
</th>
<td> <code>+</code>&nbsp;&nbsp; <code>−</code>
</td>
<td> Addition and subtraction
</td></tr>
<tr>
<th> 7
</th>
<td> <code>&lt;&lt;</code>&nbsp;&nbsp; <code>&gt;&gt;</code>
</td>
<td> Bitwise left shift and right shift
</td></tr>
<tr>
<th rowspan="2"> 8
</th>
<td style="border-bottom-style: none"> <code>&lt;</code>&nbsp;&nbsp; <code>&lt;=</code>
</td>
<td style="border-bottom-style: none"> For relational operators &lt; and ≤ respectively
</td></tr>
<tr>
<td style="border-top-style: none"> <code>&gt;</code>&nbsp;&nbsp; <code>&gt;=</code>
</td>
<td style="border-top-style: none"> For relational operators &gt; and ≥ respectively
</td></tr>
<tr>
<th> 9
</th>
<td> <code>==</code>&nbsp;&nbsp; <code>!=</code>
</td>
<td> For relational = and ≠ respectively
</td></tr>
<tr>
<th> 10
</th>
<td> <code>&amp;</code>
</td>
<td> Bitwise AND
</td></tr>
<tr>
<th> 11
</th>
<td> <code>^</code>
</td>
<td> Bitwise XOR (exclusive or)
</td></tr>
<tr>
<th> 12
</th>
<td> <code>|</code>
</td>
<td> Bitwise OR (inclusive or)
</td></tr>
<tr>
<th> 13
</th>
<td> <code>&amp;&amp;</code>
</td>
<td> Logical AND
</td></tr>
<tr>
<th> 14
</th>
<td> <code>||</code>
</td>
<td> Logical OR
</td></tr>
<tr>
<th> 15
</th>
<td> <code>?:</code>
</td>
<td> Ternary conditional
</td>
<td style="vertical-align: top" rowspan="7"> Right-to-Left
</td></tr>
<tr>
<th rowspan="5"> 16
</th>
<td style="border-bottom-style: none"> <code>=</code>
</td>
<td style="border-bottom-style: none"> Direct assignment (provided by default for C++ classes)
</td></tr>
<tr>
<td style="border-bottom-style: none; border-top-style: none"> <code>+=</code>&nbsp;&nbsp; <code>−=</code>
</td>
<td style="border-bottom-style: none; border-top-style: none"> Assignment by sum and difference
</td></tr>
<tr>
<td style="border-bottom-style: none; border-top-style: none"> <code>*=</code>&nbsp;&nbsp; <code>/=</code>&nbsp;&nbsp; <code>%=</code>
</td>
<td style="border-bottom-style: none; border-top-style: none"> Assignment by product, quotient, and remainder
</td></tr>
<tr>
<td style="border-bottom-style: none; border-top-style: none"> <code>&lt;&lt;=</code>&nbsp;&nbsp; <code>&gt;&gt;=</code>
</td>
<td style="border-bottom-style: none; border-top-style: none"> Assignment by bitwise left shift and right shift
</td></tr>
<tr>
<td style="border-top-style: none"> <code>&amp;=</code>&nbsp;&nbsp; <code>^=</code>&nbsp;&nbsp; <code>|=</code>
</td>
<td style="border-top-style: none"> Assignment by bitwise AND, XOR, and OR
</td></tr>
<tr>
<th> 17
</th>
<td> <code>throw</code>
</td>
<td> Throw operator (for exceptions)
</td></tr>
<tr>
<th> 18
</th>
<td> <code>,</code>
</td>
<td> Comma
</td>
<td> Left-to-right
</td></tr></tbody></table>
  </div> 
  
<a name="c_"></a>
<div class="lang_op" id="c_">
	<table class="toolTable table" width="100%" cellspacing="0" cellpadding="0">
		<caption>C语言运算符优先级</caption>
<tbody><tr>
<th style="text-align: left"> Precedence
</th>
<th style="text-align: left"> Operator
</th>
<th style="text-align: left"> Description
</th>
<th style="text-align: left"> Associativity
</th></tr>
<tr>
<th rowspan="6"> 1
</th>
<td style="border-bottom-style: none"> <code>++</code> <code>--</code>
</td>
<td style="border-bottom-style: none"> Suffix/postfix increment and decrement
</td>
<td style="vertical-align: top" rowspan="6"> Left-to-right
</td></tr>
<tr>
<td style="border-bottom-style: none; border-top-style: none"> <code>()</code>
</td>
<td style="border-bottom-style: none; border-top-style: none"> Function call
</td></tr>
<tr>
<td style="border-bottom-style: none; border-top-style: none"> <code>[]</code>
</td>
<td style="border-bottom-style: none; border-top-style: none"> Array subscripting
</td></tr>
<tr>
<td style="border-bottom-style: none; border-top-style: none"> <code>.</code>
</td>
<td style="border-bottom-style: none; border-top-style: none"> Structure and union member access
</td></tr>
<tr>
<td style="border-bottom-style: none; border-top-style: none"> <code>−&gt;</code>
</td>
<td style="border-bottom-style: none; border-top-style: none"> Structure and union member access through pointer
</td></tr>
<tr>
<td style="border-bottom-style: none; border-top-style: none"> <code>(<i>type</i>){<i>list</i>}</code>
</td>
<td style="border-bottom-style: none; border-top-style: none"> Compound literal<span class="t-mark">(C99)</span>
</td></tr>
<tr>
<th rowspan="8"> 2
</th>
<td style="border-bottom-style: none"> <code>++</code> <code>--</code>
</td>
<td style="border-bottom-style: none"> Prefix increment and decrement
</td>
<td style="vertical-align: top" rowspan="8"> Right-to-left
</td></tr>
<tr>
<td style="border-bottom-style: none; border-top-style: none"> <code>+</code> <code>−</code>
</td>
<td style="border-bottom-style: none; border-top-style: none"> Unary plus and minus
</td></tr>
<tr>
<td style="border-bottom-style: none; border-top-style: none"> <code>!</code> <code>~</code>
</td>
<td style="border-bottom-style: none; border-top-style: none"> Logical NOT and bitwise NOT
</td></tr>
<tr>
<td style="border-bottom-style: none; border-top-style: none"> <code>(<i>type</i>)</code>
</td>
<td style="border-bottom-style: none; border-top-style: none"> Type cast
</td></tr>
<tr>
<td style="border-bottom-style: none; border-top-style: none"> <code>*</code>
</td>
<td style="border-bottom-style: none; border-top-style: none"> Indirection (dereference)
</td></tr>
<tr>
<td style="border-bottom-style: none; border-top-style: none"> <code>&amp;</code>
</td>
<td style="border-bottom-style: none; border-top-style: none"> Address-of
</td></tr>
<tr>
<td style="border-bottom-style: none; border-top-style: none"> <code>sizeof</code>
</td>
<td style="border-bottom-style: none; border-top-style: none"> Size-of
</td></tr>
<tr>
<td style="border-bottom-style: none; border-top-style: none"> <code>_Alignof</code>
</td>
<td style="border-bottom-style: none; border-top-style: none"> Alignment requirement<span class="t-mark">(C11)</span>
</td></tr>
<tr>
<th> 3
</th>
<td> <code>*</code> <code>/</code> <code>%</code>
</td>
<td> Multiplication, division, and remainder
</td>
<td style="vertical-align: top" rowspan="11"> Left-to-right
</td></tr>
<tr>
<th> 4
</th>
<td> <code>+</code> <code>−</code>
</td>
<td> Addition and subtraction
</td></tr>
<tr>
<th> 5
</th>
<td> <code>&lt;&lt;</code> <code>&gt;&gt;</code>
</td>
<td> Bitwise left shift and right shift
</td></tr>
<tr>
<th rowspan="2"> 6
</th>
<td style="border-bottom-style: none"> <code>&lt;</code> <code>&lt;=</code>
</td>
<td style="border-bottom-style: none"> For relational operators &lt; and ≤ respectively
</td></tr>
<tr>
<td style="border-top-style: none"> <code>&gt;</code> <code>&gt;=</code>
</td>
<td style="border-top-style: none"> For relational operators &gt; and ≥ respectively
</td></tr>
<tr>
<th> 7
</th>
<td> <code>==</code> <code>!=</code>
</td>
<td> For relational = and ≠ respectively
</td></tr>
<tr>
<th> 8
</th>
<td> <code>&amp;</code>
</td>
<td> Bitwise AND
</td></tr>
<tr>
<th> 9
</th>
<td> <code>^</code>
</td>
<td> Bitwise XOR (exclusive or)
</td></tr>
<tr>
<th> 10
</th>
<td> <code>|</code>
</td>
<td> Bitwise OR (inclusive or)
</td></tr>
<tr>
<th> 11
</th>
<td> <code>&amp;&amp;</code>
</td>
<td> Logical AND
</td></tr>
<tr>
<th> 12
</th>
<td> <code>||</code>
</td>
<td> Logical OR
</td></tr>
<tr>
<th> 13
</th>
<td> <code>?:</code>
</td>
<td> Ternary conditional
</td>
<td style="vertical-align: top" rowspan="6"> Right-to-Left
</td></tr>
<tr>
<th rowspan="5"> 14
</th>
<td style="border-bottom-style: none"> <code>=</code>
</td>
<td style="border-bottom-style: none"> Simple assignment
</td></tr>
<tr>
<td style="border-bottom-style: none; border-top-style: none"> <code>+=</code> <code>−=</code>
</td>
<td style="border-bottom-style: none; border-top-style: none"> Assignment by sum and difference
</td></tr>
<tr>
<td style="border-bottom-style: none; border-top-style: none"> <code>*=</code> <code>/=</code> <code>%=</code>
</td>
<td style="border-bottom-style: none; border-top-style: none"> Assignment by product, quotient, and remainder
</td></tr>
<tr>
<td style="border-bottom-style: none; border-top-style: none"> <code>&lt;&lt;=</code> <code>&gt;&gt;=</code>
</td>
<td style="border-bottom-style: none; border-top-style: none"> Assignment by bitwise left shift and right shift
</td></tr>
<tr>
<td style="border-top-style: none"> <code>&amp;=</code> <code>^=</code> <code>|=</code>
</td>
<td style="border-top-style: none"> Assignment by bitwise AND, XOR, and OR
</td></tr>
<tr>
<th> 15
</th>
<td> <code>,</code>
</td>
<td> Comma
</td>
<td> Left-to-right
</td></tr></tbody></table>
</div>
<a name="php_"></a>
<div>
	<table class="toolTable table" width="100%" cellspacing="0" cellpadding="0">
     <caption>PHP运算符优先级</caption>
       <tr>
        <th>结合方向</th>
        <th>运算符</th>
        <th>附加信息</th>
       </tr>
       <tr>
        <td>非结合</td>
        <td><code>clone new</code></td>
        <td>clone 和 new</td>
       </tr>

       <tr>
        <td>左</td>
        <td><code>[</code></td>
        <td> <span class="function">array()</span></td>
       </tr>

       <tr>
        <td>非结合</td>
        <td><code>++ --</code></td>
        <td>
         递增／递减运算符
        </td>
       </tr>

       <tr>
        <td>非结合</td>
        <td><code>~ - (int) (float) (string) (array) (object) (bool) @</code></td>
        <td>
         类型
        </td>
       </tr>

       <tr>
        <td>非结合</td>
        <td><code>instanceof</code></td>
        <td>
         类型
        </td>
       </tr>

       <tr>
        <td>右结合</td>
        <td><code>!</code></td>
        <td>
         逻辑操作符
        </td>
       </tr>
      
       <tr>
        <td>左</td>
        <td><code>* / %</code></td>
        <td>
         算术运算符
        </td>
       </tr>

       <tr>
        <td>左</td>
        <td><code>+ - .</code></td>
        <td>
         算术运算符 和 字符串运算符</td>
       </tr>

       <tr>
        <td>左</td>
        <td><code>&lt;&lt; &gt;&gt;</code></td>
        <td>
         位运算符
        </td>
       </tr>

       <tr>
        <td>非结合</td>
        <td><code>&lt; &lt;= &gt; &gt;= &lt;&gt;</code></td>
        <td>
         比较运算符
        </td>
       </tr>

       <tr>
        <td>非结合</td>
        <td><code>== != === !==</code></td>
        <td>
         比较运算符
        </td>
       </tr>

       <tr>
        <td>左</td>
        <td><code>&amp;</code></td>
        <td>
         位运算符 和 引用</td>
       </tr>

       <tr>
        <td>左</td>
        <td><code>^</code></td>
        <td>
         位运算符
        </td>
       </tr>

       <tr>
        <td>左</td>
        <td><code>|</code></td>
        <td>
         位运算符
        </td>
       </tr>

       <tr>
        <td>左</td>
        <td><code>&amp;&amp;</code></td>
        <td>
         逻辑运算符
        </td>
       </tr>

       <tr>
        <td>左</td>
        <td><code>||</code></td>
        <td>
         逻辑运算符
        </td>
       </tr>

       <tr>
        <td>左</td>
        <td><code>? :</code></td>
        <td>
         三元运算符
        </td>
       </tr>

       <tr>
        <td>右</td>
        <td>
         <code>= += -= *= /= .= %= &amp;= |= ^= &lt;&lt;= &gt;&gt;=</code>
        </td>
        <td>
         赋值运算符
        </td>
       </tr>

       <tr>
        <td>左</td>
        <td><code>and</code></td>
        <td>
         逻辑运算符
        </td>
       </tr>

       <tr>
        <td>左</td>
        <td><code>xor</code></td>
        <td>
         逻辑运算符
        </td>
       </tr>

       <tr>
        <td>左</td>
        <td><code>or</code></td>
        <td>
         逻辑运算符
        </td>
       </tr>

       <tr>
        <td>左</td>
        <td><code>,</code></td>
        <td>多处用到</td>
       </tr>
    </table>
</div>
<a name="python_"></a>
<div>

<table class="toolTable table" width="100%" cellspacing="0" cellpadding="0">
<caption>Python 运算符优先级</caption>
<div class="alert alert-info">
	<p>这个表给出Python的运算符优先级（从低到高）.</p>
	<p>从最低的优先级（最松散地结合）到最高的优先级（最紧密地结合）。</p>
	<p>这意味着在一个表达式中，Python会首先计算表中较下面的运算符，然后在计算列在表上部的运算符。</p>
</div>
<tr>
<th>运算符</th>
<th>描述</th>
</tr>
<tr>
<td><code>lambda</code></td>
<td>Lambda表达式</td>
</tr>
<tr>
<td><code>or</code></td>
<td>布尔“或”</td>
</tr>
<tr>
<td><code>and</code></td>
<td>布尔“与”</td>
</tr>
<tr>
<td><code>not x</code></td>
<td>布尔“非”</td>
</tr>
<tr>
<td><code>in，not in</code></td>
<td>成员测试</td>
</tr>
<tr>
<td><code>is，is not</code></td>
<td>同一性测试</td>
</tr>
<tr>
<td><code>&lt;，&lt;=，&gt;，&gt;=，!=，==</code></td>
<td>比较</td>
</tr>
<tr>
<td><code>|</code></td>
<td>按位或</td>
</tr>
<tr>
<td><code>^</code></td>
<td>按位异或</td>
</tr>
<tr>
<td><code>&amp;</code></td>
<td>按位与</td>
</tr>
<tr>
<td><code>&lt;&lt;，&gt;&gt;</code></td>
<td>移位</td>
</tr>
<tr>
<td><code>+，-</code></td>
<td>加法与减法</td>
</tr>
<tr>
<td><code>*，/，%</td>
<td>乘法、除法与取余</td>
</tr>
<tr>
<td><code>+x，-x</td>
<td>正负号</td>
</tr>
<tr>
<td><code>~x</td>
<td>按位翻转</td>
</tr>
<tr>
<td><code>**</td>
<td>指数</td>
</tr>
<tr>
<td><code>x.attribute</td>
<td>属性参考</td>
</tr>
<tr>
<td><code>x[index]</td>
<td>下标</td>
</tr>
<tr>
<td><code>x[index:index]</td>
<td>寻址段</td>
</tr>
<tr>
<td><code>f(arguments...)</code></td>
<td>函数调用</td>
</tr>
<tr>
<td><code>(experession,...)</code></td>
<td>绑定或元组显示</td>
</tr>
<tr>
<td><code>[expression,...]</code></td>
<td>列表显示</td>
</tr>
<tr>
<td><code>{key:datum,...}</code></td>
<td>字典显示</td>
</tr>
<tr>
<td><code>'expression,...'</code></td>
<td>字符串转换</td>
</tr>
</table>
        </div>
        </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Right" runat="server">
</asp:Content>
