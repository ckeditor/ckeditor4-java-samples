/* Copyright (c) 2003-2015, CKSource - Frederico Knabben. All rights reserved. For licensing, see LICENSE.md or http://ckeditor.com/license */
package com.ckeditor.web;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ckeditor.CKEditor;

/**
 * The {@code DispatchServlet} class provides configuration for CKEditor instances and is responsible for navigation to appropriate
 * JavaServer Pages.
 */
public class DispatchServlet extends HttpServlet {

	/**
	 * Serial identifier.
	 */
	private static final long serialVersionUID = 1L;

	/**
	 * Extension handled by this servlet.
	 */
	private static final String EXTENSION = "sample";

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost( HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException {
		doGet( request, response );
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet( HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException {

		String requestPath = request.getRequestURI();

		if ( requestPath.endsWith( EXTENSION ) ) {
			String uri = request.getRequestURI();

			String jspPath = uri.substring( request.getContextPath().length(), ( uri.length() - EXTENSION.length() ) ) + "jsp";

			String requestFile = jspPath.substring( jspPath.lastIndexOf( "/" ) + 1 );

			provideConfiguration( requestFile, request );

			// response.sendRedirect( jspPath );
			RequestDispatcher dispatcher = request.getRequestDispatcher( jspPath );
			dispatcher.forward( request, response );
		} else {
			response.sendRedirect( "index.jsp" );
		}
	}

	/**
	 * Puts appropriate configuration options, based on file name, in scope so that they are available for JSP to use.
	 * 
	 * @param requestFile
	 *        a string representing the JSP file name for which the configuration should be provided.
	 */
	private void provideConfiguration( String requestFile, HttpServletRequest request ) {
		if ( requestFile.equals( "replaceTag.jsp" ) ) {
			request.setAttribute( "cke_config", ConfigurationProvider.getFirstEditorConfig() );

		} else if ( requestFile.equals( "replaceAllTag.jsp" ) ) {
			request.setAttribute( "cke_config", ConfigurationProvider.getSecondEditorConfig() );

		} else if ( requestFile.equals( "insertTag.jsp" ) ) {
			request.setAttribute( "cke_config", ConfigurationProvider.getThirdEditorConfig() );
			request.setAttribute( "cke_textarea_attrs", ConfigurationProvider.getTextareaAttrs() );

		} else if ( requestFile.equals( "insertInlineTag.jsp" ) ) {
			request.setAttribute( "cke_init_value", ConfigurationProvider.getInitValue() );

		} else if ( requestFile.equals( "inlineTag.jsp" ) ) {
			request.setAttribute( "cke_config", ConfigurationProvider.getSecondEditorConfig() );

		} else if ( requestFile.equals( "replaceObjectEl.jsp" ) ) {
			CKEditor ckeditor = new CKEditor( request, "../ckeditor/", CKEditor.Methods.Single.REPLACE, "editor1",
					ConfigurationProvider.getFirstEditorConfig() );
			request.setAttribute( "cke_instance", ckeditor.createHtml() );

		} else if ( requestFile.equals( "events.jsp" ) ) {
			request.setAttribute( "cke_global_events", ConfigurationProvider.getGlobalEvent() );

		} else if ( requestFile.equals( "timestamp.jsp" ) ) {
			request.setAttribute( "cke_timestamp", ( ( int ) ( Math.random() * 50 + 1 ) ) );

		} else if ( requestFile.equals( "globalConfig.jsp" ) ) {
			request.setAttribute( "ckeditor_global_config", ConfigurationProvider.getFourthEditorConfig() );

		}
	}
}
