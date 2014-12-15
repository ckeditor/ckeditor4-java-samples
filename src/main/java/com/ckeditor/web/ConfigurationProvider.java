/*
 * Copyright (c) 2003-2014, CKSource - Frederico Knabben. All rights reserved.
 * For licensing, see LICENSE.md or http://ckeditor.com/license
 */
package com.ckeditor.web;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import com.ckeditor.CKEditorConfig;
import com.ckeditor.EventHandler;
import com.ckeditor.GlobalEventHandler;

/**
 * The {@code ConfigurationProvider} class provides custom configuration for
 * CKEditor instances.
 */
public class ConfigurationProvider {

	/**
	 * Returns the custom configuration of an editor instance.
	 * 
	 * @return the {@code CKEditorConfig} object with custom editor configuration.
	 */
	public static CKEditorConfig getFirstEditorConfig( ) {
		CKEditorConfig conf = new CKEditorConfig( );		
		conf.addConfigValue( "uiColor", "#AADC6E" );
		return conf;
	}

	/**
	 * Returns the custom configuration of an editor instance.
	 * 
	 * @return the {@code CKEditorConfig} object with custom editor configuration.
	 */
	public static CKEditorConfig getSecondEditorConfig( ) {
		CKEditorConfig conf = new CKEditorConfig( );
		conf.addConfigValue( "startupFocus", "true" );
		conf.addConfigValue( "toolbar", getToolbar( ) );
		return conf;
	}

	/**
	 * Returns the custom configuration of an editor instance.
	 * 
	 * @return the {@code CKEditorConfig} object with custom editor configuration.
	 */
	public static CKEditorConfig getThirdEditorConfig( ) {
		CKEditorConfig conf = new CKEditorConfig( );
		conf.addConfigValue( "uiColor", "#33CCFF" );
		conf.addConfigValue( "toolbarGroups", getToolbarGroups( ) );
		return conf;
	}
	
	/**
	 * Returns the custom configuration of an editor instance.
	 * 
	 * @return the {@code CKEditorConfig} object with custom editor configuration.
	 */
	public static CKEditorConfig getFourthEditorConfig( ) {
		CKEditorConfig conf = new CKEditorConfig( );
		conf.addConfigValue( "startupMode", "source" );
		conf.addConfigValue( "uiColor", "#F27326" );
		return conf;
	}

	/**
	 * Returns a sample event that is applicable to all editor instances available
	 * on JSP.
	 * 
	 * @return the {@code GlobalEventHandler} object with an event for every editor
	 *         instance on the JSP.
	 */
	public static GlobalEventHandler getGlobalEvent( ) {
		GlobalEventHandler globalEventHandler = new GlobalEventHandler( );
		globalEventHandler
				.addEventHandler(
						"dialogDefinition",
						"function ( evt ) {  \n"
								+ "var logger = window.document.getElementById( 'loggerBox' ); \n"
								+ "var div = document.createElement( 'div' ); \n"
								+ "div.innerHTML = '<div>The ' + evt.editor.name + ' initialized dialog window: ' + evt.data.name + '</div>'; \n"
								+ "logger.appendChild( div ); \n}" );
		return globalEventHandler;
	}

	/**
	 * Returns a sample event that is applicable to a single editor instance.
	 * 
	 * @return the {@code EventHandler} object with an event for a single editor instance.
	 */
	public static EventHandler getEvent( ) {
		EventHandler eventHandler = new EventHandler( );
		eventHandler.addEventHandler( "instanceReady", "function ( evt ) { \n"
				+ "var logger = window.document.getElementById( 'loggerBox' ); \n"
				+ "var div = document.createElement( 'div' ); \n"
				+ "div.innerHTML = '<div>Loaded: ' + evt.editor.name; + '</div>' \n"
				+ "logger.appendChild( div ); \n}" );
		return eventHandler;
	}

	/**
	 * Returns a {@code Map} with attributes for the HTML {@code &lt;textarea&gt;} tag
	 * on which an editor instance will be created.
	 * 
	 * @return a {@code Map} with attributes for the HTML {@code &lt;textarea&gt;} tag.
	 */
	public static HashMap<String, String> getTextareaAttrs( ) {
		HashMap<String, String> attr = new HashMap<String, String>( );
		attr.put( "rows", "8" );
		attr.put( "cols", "50" );
		return attr;
	}

	/**
	 * Returns an initial value for a CKEditor instance.
	 * 
	 * @return a string representing the initial HTML value for CKEditor.
	 */
	public static String getInitValue( ) {
		return "&lt;p&gt;Sample value for &lt;strong&gt;CKEditor Java&lt;/strong&gt; Insert Tag&lt;/p&gt;";
	}

/**
	 * Returns a {@code List) representing CKEditor toolbar groups.
	 * 
	 * @return a list with CKEditor toolbar groups.
	 */
	private static List<Object> getToolbarGroups( ) {

		List<Object> mainList = new ArrayList<Object>( );
		HashMap<String, Object> toolbarSectionMap = new HashMap<String, Object>( );

		List<String> groupsList = new ArrayList<String>( );
		groupsList.add( "mode" );
		toolbarSectionMap.put( "name", "document" );
		toolbarSectionMap.put( "groups", groupsList );
		mainList.add( toolbarSectionMap );

		toolbarSectionMap = new HashMap<String, Object>( );
		toolbarSectionMap.put( "name", "links" );
		mainList.add( toolbarSectionMap );

		toolbarSectionMap = new HashMap<String, Object>( );
		groupsList = new ArrayList<String>( );
		groupsList.add( "basicstyles" );
		groupsList.add( "cleanup" );
		toolbarSectionMap.put( "name", "basicstyles" );
		toolbarSectionMap.put( "groups", groupsList );
		mainList.add( toolbarSectionMap );

		toolbarSectionMap = new HashMap<String, Object>( );
		groupsList = new ArrayList<String>( );
		groupsList.add( "spellchecker" );
		toolbarSectionMap.put( "name", "editing" );
		toolbarSectionMap.put( "groups", groupsList );
		mainList.add( toolbarSectionMap );

		toolbarSectionMap = new HashMap<String, Object>( );
		toolbarSectionMap.put( "name", "insert" );
		mainList.add( toolbarSectionMap );

		mainList.add( "/" );

		toolbarSectionMap = new HashMap<String, Object>( );
		groupsList = new ArrayList<String>( );
		groupsList.add( "list" );
		groupsList.add( "indent" );
		groupsList.add( "blocks" );
		toolbarSectionMap.put( "name", "paragraph" );
		toolbarSectionMap.put( "groups", groupsList );
		mainList.add( toolbarSectionMap );

		toolbarSectionMap = new HashMap<String, Object>( );
		toolbarSectionMap.put( "name", "tools" );
		mainList.add( toolbarSectionMap );

		toolbarSectionMap = new HashMap<String, Object>( );
		toolbarSectionMap.put( "name", "styles" );
		mainList.add( toolbarSectionMap );

		toolbarSectionMap = new HashMap<String, Object>( );
		toolbarSectionMap.put( "name", "about" );
		mainList.add( toolbarSectionMap );
		return mainList;
	}

/**
	 * Returns a {@code List) representing the CKEditor toolbar.
	 * 
	 * @return a list with the CKEditor toolbar.
	 */
	private static List<Object> getToolbar( ) {

		List<Object> mainList = new ArrayList<Object>( );
		HashMap<String, Object> toolbarSectionMap = new HashMap<String, Object>( );

		List<String> itemsList = new ArrayList<String>( );
		itemsList.add( "Source" );
		List<String> groupsList = new ArrayList<String>( );
		groupsList.add( "mode" );
		toolbarSectionMap.put( "name", "document" );
		toolbarSectionMap.put( "groups", groupsList );
		toolbarSectionMap.put( "items", itemsList );
		mainList.add( toolbarSectionMap );

		toolbarSectionMap = new HashMap<String, Object>( );
		itemsList = new ArrayList<String>( );
		itemsList.add( "Cut" );
		itemsList.add( "Copy" );
		itemsList.add( "Paste" );
		itemsList.add( "PasteText" );
		itemsList.add( "PasteFromWord" );
		itemsList.add( "-" );
		itemsList.add( "Undo" );
		itemsList.add( "Redo" );
		toolbarSectionMap.put( "name", "clipboard" );
		toolbarSectionMap.put( "items", itemsList );
		mainList.add( toolbarSectionMap );

		toolbarSectionMap = new HashMap<String, Object>( );
		itemsList = new ArrayList<String>( );
		itemsList.add( "Link" );
		itemsList.add( "Unlink" );
		itemsList.add( "Anchor" );
		toolbarSectionMap.put( "name", "links" );
		toolbarSectionMap.put( "items", itemsList );
		mainList.add( toolbarSectionMap );

		toolbarSectionMap = new HashMap<String, Object>( );
		itemsList = new ArrayList<String>( );
		itemsList.add( "Scayt" );
		toolbarSectionMap.put( "name", "editing" );
		toolbarSectionMap.put( "items", itemsList );
		mainList.add( toolbarSectionMap );

		mainList.add( "/" );

		toolbarSectionMap = new HashMap<String, Object>( );
		itemsList = new ArrayList<String>( );
		itemsList.add( "Styles" );
		itemsList.add( "Format" );
		toolbarSectionMap.put( "name", "styles" );
		toolbarSectionMap.put( "items", itemsList );
		mainList.add( toolbarSectionMap );

		toolbarSectionMap = new HashMap<String, Object>( );
		itemsList = new ArrayList<String>( );
		itemsList.add( "Bold" );
		itemsList.add( "Italic" );
		itemsList.add( "Strike" );
		itemsList.add( "-" );
		itemsList.add( "RemoveFormat" );
		groupsList = new ArrayList<String>( );
		groupsList.add( "basicstyles" );
		groupsList.add( "cleanup" );
		toolbarSectionMap.put( "name", "basicstyles" );
		toolbarSectionMap.put( "groups", groupsList );
		toolbarSectionMap.put( "items", itemsList );
		mainList.add( toolbarSectionMap );

		toolbarSectionMap = new HashMap<String, Object>( );
		itemsList = new ArrayList<String>( );
		itemsList.add( "NumberedList" );
		itemsList.add( "BulletedList" );
		itemsList.add( "-" );
		itemsList.add( "Outdent" );
		itemsList.add( "Indent" );
		itemsList.add( "-" );
		itemsList.add( "Blockquote" );
		toolbarSectionMap.put( "name", "paragraph" );
		toolbarSectionMap.put( "items", itemsList );
		mainList.add( toolbarSectionMap );

		toolbarSectionMap = new HashMap<String, Object>( );
		itemsList = new ArrayList<String>( );
		itemsList.add( "Image" );
		itemsList.add( "Table" );
		itemsList.add( "HorizontalRule" );
		itemsList.add( "SpecialChar" );
		toolbarSectionMap.put( "name", "insert" );
		toolbarSectionMap.put( "items", itemsList );
		mainList.add( toolbarSectionMap );

		toolbarSectionMap = new HashMap<String, Object>( );
		itemsList = new ArrayList<String>( );
		itemsList.add( "Maximize" );
		toolbarSectionMap.put( "name", "tools" );
		toolbarSectionMap.put( "items", itemsList );
		mainList.add( toolbarSectionMap );

		toolbarSectionMap = new HashMap<String, Object>( );
		itemsList = new ArrayList<String>( );
		itemsList.add( "About" );
		toolbarSectionMap.put( "name", "about" );
		toolbarSectionMap.put( "items", itemsList );
		mainList.add( toolbarSectionMap );
		return mainList;
	}
}