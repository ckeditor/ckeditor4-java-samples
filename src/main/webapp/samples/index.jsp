<!DOCTYPE html>
<!--
Copyright (c) 2003-2014, CKSource - Frederico Knabben. All rights reserved.
For licensing, see LICENSE.md or http://ckeditor.com/license
-->
<html>
<head>
<meta charset="utf-8">
<title>CKEditor Samples &mdash; Java Integration</title>
<link type="text/css" rel="stylesheet" href="../ckeditor/samples/sample.css" />
</head>
<body>
	<h1 class="samples">CKEditor for Java Samples List</h1>
	<div class="twoColumns">
		<div class="twoColumnsLeft">
			<h2 class="samples">CKEditor Java Tags</h2>
			<dl class="samples">
				<dt>
					<a class="samples" href="replaceTag.sample">Replace Tag</a>
				</dt>
				<dd>Replacement of textarea elements with CKEditor instances using a CKEditor Java Replace Tag.</dd>

				<dt>
					<a class="samples" href="replaceAllTag.sample">ReplaceAll Tag</a>
				</dt>
				<dd>Automatic replacement of all textarea elements on JSP using a CKEditor Java ReplaceAll Tag.</dd>

				<dt>
					<a class="samples" href="insertTag.sample">Insert Tag</a>
				</dt>
				<dd>Creation of classic editor with CKEditor Java Insert Tag on textarea which is inserted dynamically by the tag.</dd>

				<dt>
					<a class="samples" href="insertInlineTag.sample">Insert Inline Tag</a>
				</dt>
				<dd>Creation of inline editor with CKEditor Java Insert Tag on textarea which is inserted dynamically by the tag.</dd>

				<dt>
					<a class="samples" href="inlineTag.sample">Inline Tag</a>
				</dt>
				<dd>Conversion of DOM element into inline editor instance with CKEditor Java Inline Tag.</dd>

				<dt>
					<a class="samples" href="inlineAllTag.sample">InlineAll Tag</a>
				</dt>
				<dd>
					Turn all elements with
					<code>contentEditable = true</code>
					attribute into inline editors with CKEditor Java InlineAll Tag.
				</dd>
			</dl>
			<h2 class="samples">Miscellaneous</h2>
			<dl class="samples">
				<dt>
					<a class="samples" href="initialized.sample">Editor Initialized</a>
				</dt>
				<dd>
					Usage of
					<code>initialized</code>
					property which informs CKEditor whether base parameters like
					<code>ckeditor.js</code>
					script,
					<code>timestamp</code>
					or
					<code>basePath</code>
					were already inserted into JSP.
				</dd>

				<dt>
					<a class="samples" href="events.sample">Editor Events</a>
				</dt>
				<dd>Assignment of events and global events for CKEditor Java instances.</dd>

				<dt>
					<a class="samples" href="timestamp.sample">Editor Timestamp</a>
				</dt>
				<dd>
					Usage of
					<code>timestamp</code>
					property which helps to build the URL for all resources loaded by the editor code, guaranteeing clean cache results when
					upgrading.
				</dd>

				<dt>
					<a class="samples" href="globalConfig.sample">Editor Global Configuration</a>
				</dt>
				<dd>Usage of configuration options which can be assigned to all editors available on JSP, to user during his session
					or even in whole application</dd>

				<dt>
					<a class="samples" href="basePath.sample">Editor Base Path</a>
				</dt>
				<dd>
					Usage of
					<code>basePath</code>
					property which holds path to the CKEditor installation directory.
				</dd>
			</dl>
		</div>
		<div class="twoColumnsRight">
			<h2 class="samples">CKEditor Java Object</h2>
			<dl class="samples">
				<dt>
					<a class="samples" href="replaceObject.sample">Replace Object</a>
				</dt>
				<dd>Replacement of textarea elements with CKEditor instances using a CKEditor Java Object.</dd>

				<dt>
					<a class="samples" href="replaceObjectEl.sample">Replace Object using Expression Language</a>
				</dt>
				<dd>
					Replacement of textarea elements with CKEditor instances using a CKEditor Java Object.<br />This sample shows how to create
					editor instance without inserting any Java code into JSP.
				</dd>

				<dt>
					<a class="samples" href="replaceAllObject.sample">ReplaceAll Object</a>
				</dt>
				<dd>Automatic replacement of all textarea elements on JSP using a CKEditor Java Object.</dd>

				<dt>
					<a class="samples" href="insertObject.sample">Insert Object</a>
				</dt>
				<dd>Creation of classic editor with CKEditor Java Object on textarea which is inserted dynamically by the Object.</dd>

				<dt>
					<a class="samples" href="insertInlineObject.sample">Insert Inline Object</a>
				</dt>
				<dd>Creation of inline editor with CKEditor Java Object on textarea which is inserted dynamically by the Object.</dd>

				<dt>
					<a class="samples" href="inlineObject.sample">Inline Object</a>
				</dt>
				<dd>Conversion of DOM element into inline editor instance with CKEditor Java Object.</dd>

				<dt>
					<a class="samples" href="inlineAllObject.sample">InlineAll Object</a>
				</dt>
				<dd>
					Turn all elements with
					<code>contentEditable = true</code>
					attribute into inline editors with CKEditor Java Object.
				</dd>
			</dl>
		</div>
	</div>
	<div id="footer">
		<hr>
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
