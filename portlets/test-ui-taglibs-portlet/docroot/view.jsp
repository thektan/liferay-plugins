<%--
/**
 * Copyright (c) 2000-present Liferay, Inc. All rights reserved.
 *
 * This library is free software; you can redistribute it and/or modify it under
 * the terms of the GNU Lesser General Public License as published by the Free
 * Software Foundation; either version 2.1 of the License, or (at your option)
 * any later version.
 *
 * This library is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public License for more
 * details.
 */
--%>

<%@ include file="/init.jsp" %>


<%
String tabs1 = ParamUtil.getString(request, "tabs1", "Button");

PortletURL portletURL = renderResponse.createRenderURL();

portletURL.setWindowState(WindowState.NORMAL);

portletURL.setParameter("struts_action", "/test-mobile-responsive/view");
portletURL.setParameter("tabs1", tabs1);

String tabNames = "Alerts,Assets,Breadcrumb,Button,Captcha,Column,Component,Container,Custom Attribute,Diff,Discussion,Display Style,Email Notification Settings,Flags,Header,Icon Menu,Icons,Input,Language,Logo Selector,Membership Policy Error,Navbar,Navbar Search,Page Iterator,Panel,Ratings,Row,RSS,Search,Sites Directory,Social,Translation Manager,Trash,Workflow Status";
%>

<liferay-ui:tabs
	names="<%= tabNames %>"
	url="<%= portletURL.toString() %>"
/>

<c:choose>
	<c:when test='<%= tabs1.equals("Alerts") %>'>
		<%@ include file="/alerts.jsp" %>
	</c:when>
	<c:when test='<%= tabs1.equals("Assets") %>'>
		<%@ include file="/assets.jsp" %>
	</c:when>
	<c:when test='<%= tabs1.equals("Breadcrumb") %>'>
		<%@ include file="/breadcrumb.jsp" %>
	</c:when>
	<c:when test='<%= tabs1.equals("Button") %>'>
		<%@ include file="/button.jsp" %>
	</c:when>
	<c:when test='<%= tabs1.equals("Captcha") %>'>
		<%@ include file="/captcha.jsp" %>
	</c:when>
	<c:when test='<%= tabs1.equals("Column") %>'>
		<%@ include file="/column.jsp" %>
	</c:when>
	<c:when test='<%= tabs1.equals("Component") %>'>
		<%@ include file="/component.jsp" %>
	</c:when>
	<c:when test='<%= tabs1.equals("Container") %>'>
		<%@ include file="/container.jsp" %>
	</c:when>
	<c:when test='<%= tabs1.equals("Custom Attribute") %>'>
		<%@ include file="/custom_attribute.jsp" %>
	</c:when>
	<c:when test='<%= tabs1.equals("Diff") %>'>
		<%@ include file="/diff.jsp" %>
	</c:when>
	<c:when test='<%= tabs1.equals("Discussion") %>'>
		<%@ include file="/discussion.jsp" %>
	</c:when>
	<c:when test='<%= tabs1.equals("Display Style") %>'>
		<%@ include file="/display_style.jsp" %>
	</c:when>
	<c:when test='<%= tabs1.equals("Email Notification Settings") %>'>
		<%@ include file="/email_notification_settings.jsp" %>
	</c:when>
	<c:when test='<%= tabs1.equals("Flags") %>'>
		<%@ include file="/flags.jsp" %>
	</c:when>
	<c:when test='<%= tabs1.equals("Header") %>'>
		<%@ include file="/header.jsp" %>
	</c:when>
	<c:when test='<%= tabs1.equals("Icons") %>'>
		<%@ include file="/icons.jsp" %>
	</c:when>
	<c:when test='<%= tabs1.equals("Icon Menu") %>'>
		<%@ include file="/icon_menu.jsp" %>
	</c:when>
	<c:when test='<%= tabs1.equals("Input") %>'>
		<%@ include file="/input.jsp" %>
	</c:when>
	<c:when test='<%= tabs1.equals("Language") %>'>
		<%@ include file="/language.jsp" %>
	</c:when>
	<c:when test='<%= tabs1.equals("Logo Selector") %>'>
		<%@ include file="/logo_selector.jsp" %>
	</c:when>
	<c:when test='<%= tabs1.equals("Membership Policy Error") %>'>
		<%@ include file="/membership_policy_error.jsp" %>
	</c:when>
	<c:when test='<%= tabs1.equals("Navbar") %>'>
		<%@ include file="/navbar.jsp" %>
	</c:when>
	<c:when test='<%= tabs1.equals("Navbar Search") %>'>
		<%@ include file="/navbar_search.jsp" %>
	</c:when>
	<c:when test='<%= tabs1.equals("Page Iterator") %>'>
		<%@ include file="/page_iterator.jsp" %>
	</c:when>
	<c:when test='<%= tabs1.equals("Panel") %>'>
		<%@ include file="/panel.jsp" %>
	</c:when>
	<c:when test='<%= tabs1.equals("Ratings") %>'>
		<%@ include file="/ratings.jsp" %>
	</c:when>
	<c:when test='<%= tabs1.equals("Row") %>'>
		<%@ include file="/row.jsp" %>
	</c:when>
	<c:when test='<%= tabs1.equals("RSS") %>'>
		<%@ include file="/rss.jsp" %>
	</c:when>
	<c:when test='<%= tabs1.equals("Search") %>'>
		<%@ include file="/search.jsp" %>
	</c:when>
	<c:when test='<%= tabs1.equals("Sites Directory") %>'>
		<%@ include file="/sites_directory.jsp" %>
	</c:when>
	<c:when test='<%= tabs1.equals("Social") %>'>
		<%@ include file="/social.jsp" %>
	</c:when>
	<c:when test='<%= tabs1.equals("Translation Manager") %>'>
		<%@ include file="/translation_manager.jsp" %>
	</c:when>
	<c:when test='<%= tabs1.equals("Trash") %>'>
		<%@ include file="/trash.jsp" %>
	</c:when>
	<c:when test='<%= tabs1.equals("Workflow Status") %>'>
		<%@ include file="/workflow_status.jsp" %>
	</c:when>
</c:choose>
