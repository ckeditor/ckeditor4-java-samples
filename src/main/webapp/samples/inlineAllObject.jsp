<%@page language="Java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="com.ckeditor.CKEditor"%>
<%@page import="com.ckeditor.CKEditorConfig"%>
<%@page import="com.ckeditor.web.ConfigurationProvider"%>
<!DOCTYPE html>
<!--
Copyright (c) 2003-2014, CKSource - Frederico Knabben. All rights reserved.
For licensing, see LICENSE.md or http://ckeditor.com/license
-->
<html>
<head>
<meta charset="utf-8">
<title>Massive Inline Editing &mdash; CKEditor Sample</title>
<link type="text/css" rel="stylesheet" href="${pageContext.servletContext.contextPath}/ckeditor/samples/sample.css" />
<link type="text/css" rel="stylesheet" href="../styles/sampleapp.css" />
<script type="text/javascript" src="../scripts/sampleapp.js"></script>
<style>
/* The following styles are just to make the page look nice. */

/* Workaround to show Arial Black in Firefox. */
@font-face {
	font-family: 'arial-black';
	src: local('Arial Black');
}

*[contenteditable="true"] {
	padding: 10px;
}

#container {
	width: 960px;
	margin: 30px auto 0;
}

#header {
	overflow: hidden;
	padding: 0 0 30px;
	border-bottom: 5px solid #05B2D2;
	position: relative;
}

#headerLeft,#headerRight {
	width: 49%;
	overflow: hidden;
}

#headerLeft {
	float: left;
	padding: 10px 1px 1px;
}

#headerLeft h2,#headerLeft h3 {
	text-align: right;
	margin: 0;
	overflow: hidden;
	font-weight: normal;
}

#headerLeft h2 {
	font-family: "Arial Black", arial-black;
	font-size: 4.6em;
	line-height: 1.1;
	text-transform: uppercase;
}

#headerLeft h3 {
	font-size: 2.3em;
	line-height: 1.1;
	margin: .2em 0 0;
	color: #666;
}

#headerRight {
	float: right;
	padding: 1px;
}

#headerRight p {
	line-height: 1.8;
	text-align: justify;
	margin: 0;
}

#headerRight p+p {
	margin-top: 20px;
}

#headerRight>div {
	padding: 20px;
	margin: 0 0 0 30px;
	font-size: 1.4em;
	color: #666;
}

#columns {
	color: #333;
	overflow: hidden;
	padding: 20px 0;
}

#columns>div {
	float: left;
	width: 33.3%;
}

#columns #column1>div {
	margin-left: 1px;
}

#columns #column3>div {
	margin-right: 1px;
}

#columns>div>div {
	margin: 0px 10px;
	padding: 10px 20px;
}

#columns blockquote {
	margin-left: 15px;
}

#tagLine {
	border-top: 5px solid #05B2D2;
	padding-top: 20px;
}

#taglist {
	display: inline-block;
	margin-left: 20px;
	font-weight: bold;
	margin: 0 0 0 20px;
}
</style>
</head>
<body>
	<div>
		<h1 class="samples">
			<a href="index.jsp">CKEditor Samples</a> &raquo; Create Inline Editors on Editable Elements Using the CKEditor for Java Object
		</h1>
		<div class="description">
			<p>
				This sample demonstrates how to create inline CKEditor instances on all editable elements available on JSP <a href="http://link-to-docs">using the CKEditor for Java object</a>.
			</p>
			<div>
				<a id="showMore" href="javascript:SAMPLE_APP.showHide();">Show More &#x025BE;</a>
			</div>
			<div id="moreText">
				<p>To create inline editor instances, place the following call at any point after all editable elements on the page:</p>
				<pre class="samples">
&lt;%				
	CKEditor ckeditor = new CKEditor( request, "../ckeditor", CKEditor.Methods.Multi.INLINE_ALL );
	out.println( ckeditor.createHtml() );
%&gt;</pre>
				<p>
					For more information about the CKEditor for Java object, its constructors and methods, please refer to the
					<a href="http://link-to-docs">CKEditor for Java documentation</a> and the <a href="http://link-to-java-docs">API reference</a> or check the Java source code of this sample in your IDE.
				</p>
				<p>
					<strong>Important note:</strong> Since JSP 1.2 scriptlets are discouraged and you should avoid them whenever tag libraries or
					Expression Language (EL) provide equivalent functionality. This makes pages easier to read and maintain. It also helps to separate
					business logic from presentation logic, which is desired in Model View Controller (MVC) based frameworks. <a
					    id="showLess" href="javascript:SAMPLE_APP.showHide();">Show Less &#x025B4;</a>
				</p>
			</div>
		</div>
	</div>
	<div id="container">
		<div id="header">
			<div id="headerLeft">
				<h2 id="sampleTitle" contenteditable="true">
					CKEditor<br> Goes Inline!
				</h2>
				<h3 contenteditable="true">Lorem ipsum dolor sit amet dolor duis blandit vestibulum faucibus a, tortor.</h3>
			</div>
			<div id="headerRight">
				<div contenteditable="true">
					<p>Lorem ipsum dolor sit amet enim. Etiam ullamcorper. Suspendisse a pellentesque dui, non felis. Maecenas malesuada elit
						lectus felis, malesuada ultricies.</p>
					<p>Curabitur et ligula. Ut molestie a, ultricies porta urna. Vestibulum commodo volutpat a, convallis ac, laoreet enim.
						Phasellus fermentum in, dolor. Pellentesque facilisis. Nulla imperdiet sit amet magna. Vestibulum dapibus, mauris nec
						malesuada fames ac.</p>
				</div>
			</div>
		</div>
		<div id="columns">
			<div id="column1">
				<div contenteditable="true">
					<h3>Fusce vitae porttitor</h3>
					<p>
						<strong> Lorem ipsum dolor sit amet dolor. Duis blandit vestibulum faucibus a, tortor. </strong>
					</p>
					<p>
						Proin nunc justo felis mollis tincidunt, risus risus pede, posuere cubilia Curae, Nullam euismod, enim. Etiam nibh ultricies
						dolor ac dignissim erat volutpat. Vivamus fermentum <a href="http://ckeditor.com/">nisl nulla sem in</a> metus. Maecenas
						wisi. Donec nec erat volutpat.
					</p>
					<blockquote>
						<p>Fusce vitae porttitor a, euismod convallis nisl, blandit risus tortor, pretium. Vehicula vitae, imperdiet vel, ornare
							enim vel sodales rutrum</p>
					</blockquote>
					<blockquote>
						<p>Libero nunc, rhoncus ante ipsum non ipsum. Nunc eleifend pede turpis id sollicitudin fringilla. Phasellus ultrices,
							velit ac arcu.</p>
					</blockquote>
					<p>Pellentesque nunc. Donec suscipit erat. Pellentesque habitant morbi tristique ullamcorper.</p>
					<p>
						<s>Mauris mattis feugiat lectus nec mauris. Nullam vitae ante.</s>
					</p>
				</div>
			</div>
			<div id="column2">
				<div contenteditable="true">
					<h3>Integer condimentum sit amet</h3>
					<p>
						<strong>Aenean nonummy a, mattis varius. Cras aliquet.</strong> Praesent <a href="http://ckeditor.com/">magna non mattis
							ac, rhoncus nunc</a>, rhoncus eget, cursus pulvinar mollis.
					</p>
					<p>Proin id nibh. Sed eu libero posuere sed, lectus. Phasellus dui gravida gravida feugiat mattis ac, felis.</p>
					<p>Integer condimentum sit amet, tempor elit odio, a dolor non ante at sapien. Sed ac lectus. Nulla ligula quis eleifend
						mi, id leo velit pede cursus arcu id nulla ac lectus. Phasellus vestibulum. Nunc viverra enim quis diam.</p>
				</div>
				<div contenteditable="true">
					<h3>Praesent wisi accumsan sit amet nibh</h3>
					<p>Donec ullamcorper, risus tortor, pretium porttitor. Morbi quam quis lectus non leo.</p>
					<p style="margin-left: 40px;">
						Integer faucibus scelerisque. Proin faucibus at, aliquet vulputate, odio at eros. Fusce <a href="http://ckeditor.com/">gravida,
							erat vitae augue</a>. Fusce urna fringilla gravida.
					</p>
					<p>In hac habitasse platea dictumst. Praesent wisi accumsan sit amet nibh. Maecenas orci luctus a, lacinia quam sem,
						posuere commodo, odio condimentum tempor, pede semper risus. Suspendisse pede. In hac habitasse platea dictumst. Nam sed
						laoreet sit amet erat. Integer.</p>
				</div>
			</div>
			<div id="column3">
				<div contenteditable="true">
					<p>
						<img src="${pageContext.servletContext.contextPath}/ckeditor/samples/assets/inlineall/logo.png" alt="CKEditor logo"
							style="float: left">
					</p>
					<p>
						Quisque justo neque, mattis sed, fermentum ultrices <strong>posuere cubilia Curae</strong>, Vestibulum elit metus, quis
						placerat ut, lectus. Ut sagittis, nunc libero, egestas consequat lobortis velit rutrum ut, faucibus turpis. Fusce porttitor,
						nulla quis turpis. Nullam laoreet vel, consectetuer tellus suscipit ultricies, hendrerit wisi. Donec odio nec velit ac nunc
						sit amet, accumsan cursus aliquet. Vestibulum ante sit amet sagittis mi.
					</p>
					<h3>Nullam laoreet vel consectetuer tellus suscipit</h3>
					<ul>
						<li>Ut sagittis, nunc libero, egestas consequat lobortis velit rutrum ut, faucibus turpis.</li>
						<li>Fusce porttitor, nulla quis turpis. Nullam laoreet vel, consectetuer tellus suscipit ultricies, hendrerit wisi.</li>
						<li>Mauris eget tellus. Donec non felis. Nam eget dolor. Vestibulum enim. Donec.</li>
					</ul>
					<p>
						Quisque justo neque, mattis sed, <a href="http://ckeditor.com/">fermentum ultrices posuere cubilia</a> Curae, Vestibulum
						elit metus, quis placerat ut, lectus.
					</p>
					<p>Nullam laoreet vel, consectetuer tellus suscipit ultricies, hendrerit wisi. Ut sagittis, nunc libero, egestas
						consequat lobortis velit rutrum ut, faucibus turpis. Fusce porttitor, nulla quis turpis.</p>
					<p>Donec odio nec velit ac nunc sit amet, accumsan cursus aliquet. Vestibulum ante sit amet sagittis mi. Sed in nonummy
						faucibus turpis. Mauris eget tellus. Donec non felis. Nam eget dolor. Vestibulum enim. Donec.</p>
				</div>
			</div>
		</div>
		<div id="tagLine">
			Tags of this article:
			<p id="taglist" contenteditable="true">inline, editing, floating, CKEditor</p>
		</div>

		<%
			CKEditorConfig configuration = new CKEditorConfig();
			configuration.addConfigValue("uiColor", "#AADC6E");
			request.setAttribute("ckeditor_global_config", configuration);

			CKEditor ckeditor = new CKEditor(request, "../ckeditor",
					CKEditor.Methods.Multi.INLINE_ALL);
			out.println(ckeditor.createHtml());
		%>

	</div>
	<div id="footer">
		<hr>
		<p>
			CKEditor - The text editor for the Internet - <a class="samples" href="http://ckeditor.com/"> http://ckeditor.com</a>
		</p>
		<p id="copy">
			Copyright &copy; 2003-2014, <a class="samples" href="http://cksource.com/">CKSource</a> - Frederico Knabben. All rights
			reserved.
		</p>
	</div>
</body>
</html>
