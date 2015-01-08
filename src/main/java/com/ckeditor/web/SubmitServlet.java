/*
 * Copyright (c) 2003-2015, CKSource - Frederico Knabben. All rights reserved.
 * For licensing, see LICENSE.md or http://ckeditor.com/license
 */
package com.ckeditor.web;

import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class SubmitServlet extends HttpServlet {

    /**
     * Array of special characters which should be converted to HTML entities.
     */
    private static final String[] CHARS_FROM = {"&", "\"", "<", ">"};

    /**
     * Array of HTML entities into which special characters are converted.
     */
    private static final String[] CHARS_TO = {"&amp;", "&quot;", "&lt;",
        "&gt;"};

    /**
     * Serial identifier.
     */
    private static final long serialVersionUID = -8568318698824941902L;

    /**
     * Extension handled by this servlet.
     */
    private final String EXTENSION = "result";

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
     * response)
     */
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {

        String requestPath = request.getRequestURI();

        if (requestPath.endsWith(EXTENSION)) {
            String uri = request.getRequestURI();
            String jspPath = uri.substring(
                    request.getContextPath().length(),
                    (uri.length() - EXTENSION.length()))
                    + "jsp";

            request.setAttribute("cke_submit_data",
                    getAllFormFieldsAndValues(request));
            RequestDispatcher dispatcher = request
                    .getRequestDispatcher(jspPath);
            dispatcher.forward(request, response);
        }
    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
     * response)
     */
    protected void doGet(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    /**
     * Returns a {@code String} representing an HTML table with form fields and
     * their values sent in the request.
     *
     * @return a string with form fields and their values in an HTML table.
     */
    @SuppressWarnings("unchecked")
    public String getAllFormFieldsAndValues(HttpServletRequest request) {
        StringBuffer sb = new StringBuffer();

        Enumeration<String> e = request.getParameterNames();
        if (e.hasMoreElements()) {
            while (e.hasMoreElements()) {
                String field = (String) e.nextElement();
                String fieldValue = request.getParameter(field);
                sb.append("<tr>");
                sb.append("<th style=\"vertical-align: top\">");
                sb.append(parse(field));
                sb.append("</th>");
                sb.append("<td><pre class=\"samples\">");
                sb.append(parse(fieldValue));
                sb.append("</pre></td>");
                sb.append("</tr>");
            }
        } else {
            sb.append("<tr><th></th><td></td></tr>");
        }
        return sb.toString();
    }

    /**
     * Converts special characters found in a string into HTML entities.
     *
     * @param fieldValue a string with special characters to convert.
     * @return a string with special characters converted to HTML entities.
     */
    private String parse(String fieldValue) {
        String fv = fieldValue;
        for (int i = 0; i < CHARS_FROM.length; i++) {
            fv = fv.replaceAll(CHARS_FROM[i], CHARS_TO[i]);
        }
        return fv;
    }
}
