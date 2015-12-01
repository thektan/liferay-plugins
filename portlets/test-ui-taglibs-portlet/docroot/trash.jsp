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

<%
	PortletRequest portletRequest = (PortletRequest)request.getAttribute("javax.portlet.request");

	SessionMessages.add(portletRequest, portletDisplay.getId());
%>

<div class="alert alert-default">
	<strong>Taglibs used: </strong>

	<span class="badge badge-primary">liferay-ui:trash-empty</span>

	<span class="badge badge-primary">liferay-ui:trash-undo</span>

	<span class="badge badge-primary">liferay-ui:restore-entry</span>
</div>

<%
String someString = "testing";
%>

<h3>liferay-ui:trash-empty</h3>

<liferay-ui:trash-empty
	portletURL="<%= someString %>"
	totalEntries="<%= 10 %>"
/>

<br />

<h3>liferay-ui:trash-undo</h3>

<liferay-ui:trash-undo
	portletURL="<%= someString %>"
/>

<br />

<h3>liferay-ui:restore-entry</h3>

<liferay-portlet:actionURL name="restoreEntry" varImpl="restoreURL" />

<liferay-ui:restore-entry
	restoreURL="<%= restoreURL %>"
/>
