<%@page language="Java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="com.ckeditor.CKEditor"%>
<%@page import="com.ckeditor.web.ConfigurationProvider"%>
<%@page import="java.util.*"%>
<!DOCTYPE html>
<!--
Copyright (c) 2003-2014, CKSource - Frederico Knabben. All rights reserved.
For licensing, see LICENSE.md or http://ckeditor.com/license
-->
<html>
<head>
<meta charset="utf-8">
<title>Create CKEditor Instance on Dynamically Inserted Textarea &mdash; CKEditor Sample</title>
<link type="text/css" rel="stylesheet" href="${pageContext.servletContext.contextPath}/ckeditor/samples/sample.css" />
<link type="text/css" rel="stylesheet" href="../styles/sampleapp.css" />
<script type="text/javascript" src="../scripts/sampleapp.js"></script>
</head>
<body>
	<h1 class="samples">
		<a href="index.jsp">CKEditor Samples</a> &raquo; Create CKEditor Instance on dynamically inserted textarea element using
		CKEditor Java Object
	</h1>
	<div class="description">
		<p>
			This sample shows how, with the help of <a href="http://link-to-docs">Java code</a>, to replace
			<code>&lt;textarea&gt;</code>
			element with classic CKEditor instance, without
			<code>&lt;textarea&gt;</code>
			element even being present on JSP. The
			<code>&lt;textarea&gt;</code>
			element will be in fact inserted dynamically by the CKEditor Object.
		</p>
		<div>
			<a id="showMore" href="javascript:SAMPLE_APP.showHide();">Show More &#x025BE;</a>
		</div>
		<div id="moreText">
			<p>To insert editor instance, place below code, on JSP in place of your choice:</p>
			<pre class="samples">
&lt;%
	String value = "&lt;p&gt;Sample value for &lt;strong&gt;CKEditor Java&lt;/strong&gt; Insert Object&lt;/p&gt;";

	HashMap&lt;String , String&gt; textareaAttributes = new HashMap&lt;String , String&gt;();
	textareaAttributes.put( "rows", "8" );
	textareaAttributes.put( "cols", "20" );		
							
	CKEditor ckeditor = new CKEditor( request, "../ckeditor", "textarea_id", value, textareaAttributes );
	out.println( ckeditor.createHtml() );
%&gt;</pre>
			<p>
				Note that
				<code>
					<em>textarea_id</em>
				</code>
				in the code above will become the
				<code>id</code>
				of the
				<code>&lt;textarea&gt;</code>
				element that will be inserted into JSP and used to create editor on it.
			</p>
			<p>
				This sample also uses custom configuration (requires different constructor). For more information on CKEditor Java Object, its
				constructors and methods, please refer to <a href="http://link-to-docs">online documentation</a>, <a
					href="http://link-to-java-docs">Java Docs</a> and check out the source code of this sample.
			</p>
			<p>
				<strong>Please Note</strong> that since JSP 1.2 scriplets are discouraged and you should avoid them whenever tag libraries or
				Expression Language (EL) provide equivalent functionality. This makes pages easier to read, maintain and helps to separate
				business logic from presentation logic what is more than desired in Model View Controller (MVC) based frameworks. <a
					id="showLess" href="javascript:SAMPLE_APP.showHide();">Show Less &#x025B4;</a>
			</p>
		</div>
	</div>
	<form action="assets/posteddata.result" method="post">
		<p>
			<label for="editor1"> Editor 1:</label>
		</p>
		<p>

			<%
				String value = "<p>Sample value for <strong>CKEditor Java</strong> Insert Object</p>";

							HashMap<String, String> textareaAttributes = new HashMap<String, String>();
							textareaAttributes.put( "rows", "8" );
							textareaAttributes.put( "cols", "20" );		
									
							CKEditor ckeditor = new CKEditor(request, "../ckeditor", "editor1",	value, textareaAttributes, ConfigurationProvider.getThirdEditorConfig());
							out.println(ckeditor.createHtml());
			%>

		</p>
		<p>
			<input type="submit" value="Submit" />
		</p>
	</form>
	<div id="footer">
		<hr />
		<p>
			CKEditor - The text editor for the Internet - <a class="samples" href="http://ckeditor.com/">http://ckeditor.com</a>
		</p>
		<p id="copy">
			Copyright &copy; 2003-2014, <a class="samples" href="http://cksource.com/">CKSource</a> - Frederico Knabben. All rights
			reserved.
		</p>
	</div>
</body>
</html>
