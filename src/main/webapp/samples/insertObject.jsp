<%@page language="Java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="com.ckeditor.CKEditor"%>
<%@page import="com.ckeditor.web.ConfigurationProvider"%>
<%@page import="java.util.*"%>
<!DOCTYPE html>
<!--
Copyright (c) 2003-2015, CKSource - Frederico Knabben. All rights reserved.
For licensing, see LICENSE.md or http://ckeditor.com/license
-->
<html>
<head>
<meta charset="utf-8">
<title>Create a CKEditor Instance on a Dynamically Inserted Textarea &mdash; CKEditor Sample</title>
<link type="text/css" rel="stylesheet" href="${pageContext.servletContext.contextPath}/ckeditor/samples/sample.css" />
<link type="text/css" rel="stylesheet" href="../styles/sampleapp.css" />
<script type="text/javascript" src="../scripts/sampleapp.js"></script>
</head>
<body>
	<h1 class="samples">
		<a href="index.jsp">CKEditor Samples</a> &raquo; Create a CKEditor Instance on a Dynamically Inserted Textarea Element Using
		the CKEditor for Java Object
	</h1>
	<div class="description">
		<p>
			This sample shows how to replace a
			<code>&lt;textarea&gt;</code>
			element with a classic CKEditor instance <a href="http://link-to-docs">using the CKEditor for Java object</a>. In this case the
			<code>&lt;textarea&gt;</code>
			element is not initially present on JSP &mdash; it is in fact inserted dynamically by the JSP tag.
		</p>
		<div>
			<a id="showMore" href="javascript:SAMPLE_APP.showHide();">Show More &#x025BE;</a>
		</div>
		<div id="moreText">
			<p>To insert an editor instance, place the following code in your JSP:</p>
			<pre class="samples">
&lt;%
	String value = "&lt;p&gt;Sample value for the &lt;strong&gt;CKEditor for Java&lt;/strong&gt; Insert object.&lt;/p&gt;";

	HashMap&lt;String , String&gt; textareaAttributes = new HashMap&lt;String , String&gt;();
	textareaAttributes.put( "rows", "8" );
	textareaAttributes.put( "cols", "20" );		
							
	CKEditor ckeditor = new CKEditor( request, "../ckeditor", "textarea_id", value, textareaAttributes );
	out.println( ckeditor.createHtml() );
%&gt;</pre>
			<p>
				Note that
				<code><em>textarea_id</em></code>
				in the code above will become the
				<code>id</code>
				of the
				<code>&lt;textarea&gt;</code>
				element that will be inserted into JSP and replaced with CKEditor.
			</p>
			<p>
				This editor sample also uses custom configuration, which requires a different constructor. For more information about the CKEditor for Java object, its
				constructors and methods, please refer to the <a href="http://link-to-docs">CKEditor for Java documentation</a> and the <a
					href="http://link-to-java-docs">API reference</a> or check the Java source code of this sample in your IDE.
			</p>
			<p>
				<strong>Important note:</strong> Since JSP 1.2 scriptlets are discouraged and you should avoid them whenever tag libraries or
				Expression Language (EL) provide equivalent functionality. This makes pages easier to read and maintain. It also helps to separate
				business logic from presentation logic, which is desired in Model View Controller (MVC) based frameworks. <a
					id="showLess" href="javascript:SAMPLE_APP.showHide();">Show Less &#x025B4;</a>
			</p>
		</div>
	</div>
	<form action="assets/posteddata.result" method="post">
		<p>
			<label for="editor1">Editor 1:</label>
		</p>
		<p>

			<%
				String value = "<p>Sample value for the <strong>CKEditor for Java</strong> Insert object.</p>";

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
			Copyright &copy; 2003-2015, <a class="samples" href="http://cksource.com/">CKSource</a> - Frederico Knabben. All rights
			reserved.
		</p>
	</div>
</body>
</html>
