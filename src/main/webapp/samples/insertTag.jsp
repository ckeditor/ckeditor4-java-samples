<%@page language="Java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://ckeditor.com" prefix="ckeditor"%>
<!DOCTYPE html>
<!--
Copyright (c) 2003-2014, CKSource - Frederico Knabben. All rights reserved.
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
		<a href="index.jsp">CKEditor Samples</a> &raquo; Create a CKEditor Instance on a Dynamically Inserted Textarea Element Using a JSP Tag
	</h1>
	<div class="description">
		<p>
			This sample shows how to replace a
			<code>&lt;textarea&gt;</code>
			element with a classic CKEditor instance using <a href="http://link-to-docs">Java code</a>. In this case the
			<code>&lt;textarea&gt;</code>
			element is not initially present on JSP &mdash; it is in fact inserted dynamically by the JSP tag.
		</p>
		<div>
			<a id="showMore" href="javascript:SAMPLE_APP.showHide();">Show More &#x025BE;</a>
		</div>
		<div id="moreText">
			<p>To insert an editor instance, place the following code on your JSP:</p>
			<pre class="samples">&lt;ckeditor:editor basePath="../ckeditor/" editor="textarea_id" /&gt;</pre>
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
				In this sample a custom configuration, some <code>&lt;textarea&gt;</code> element attributes and an initial <code>&lt;textarea&gt;</code> element value are used. Attribute values are assigned with
				Expression Language and scriptlets. For more information about this tag and its attributes please refer to the <a href="http://link-to-docs">CKEditor for Java documentation</a> and check the Java source code of
				this sample in your IDE. <a id="showLess" href="javascript:SAMPLE_APP.showHide();">Show Less &#x025B4;</a>
			</p>
		</div>
	</div>
	<form action="assets/posteddata.result" method="post">
		<p>
			<label for="editor1">Editor 1:</label>
		</p>
		<p>
			<%
				String value = "<p>Sample value for the CKEditor for Java <strong>Insert Tag</strong>.</p>";
			%>
			<ckeditor:editor textareaAttributes="${cke_textarea_attrs}" basePath="${pageContext.servletContext.contextPath}/ckeditor/"
				config="${cke_config}" editor="editor1" value="<%= value %>" />
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
