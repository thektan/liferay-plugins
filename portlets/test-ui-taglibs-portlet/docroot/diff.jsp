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
String sourceName = (String)renderRequest.getAttribute("SOURCE_NAME");
String targetName = (String)renderRequest.getAttribute("TARGET_NAME");
List[] diffResults = (List[])renderRequest.getAttribute("DIFF_RESULTS");

out.println(diffResults);
out.println(sourceName);
out.println(targetName);
%>

<%-- <liferay-ui:header title="liferay-ui:diff" />

<c:catch var="catchException">
	<liferay-ui:diff
		diffResults="<%= diffResults %>"
		sourceName="test"
		targetName="test"
	/>
</c:catch>

<c:if test = "${catchException != null}">
	<div class="alert alert-danger">
		${catchException}
	</div>
</c:if> --%>
