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

	SessionErrors.add(portletRequest, "error-test");

	SessionMessages.add(portletRequest, "success-test");
%>

<div class="alert alert-default">
	<strong>Taglibs used: </strong>

	<span class="badge badge-primary">liferay-ui:success</span>

	<span class="badge badge-primary">liferay-ui:error</span>
</div>

<h3>ui:success</h3>

<liferay-ui:success key="success-test" message="Success Message" />

<h3>ui:error</h3>

<liferay-ui:error key="error-test" message="Error Message" />
