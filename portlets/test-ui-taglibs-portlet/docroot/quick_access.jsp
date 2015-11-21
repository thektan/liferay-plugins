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

<%@ page import="com.liferay.portal.kernel.servlet.taglib.ui.QuickAccessEntry" %>

<%
QuickAccessEntry testQuickAccessEntry = new QuickAccessEntry();
testQuickAccessEntry.setData("Testing Data");
testQuickAccessEntry.setId("1");
testQuickAccessEntry.setLabel("Testing Label");

List<QuickAccessEntry> quickAccessEntries = Arrays.asList(testQuickAccessEntry);
%>

<div class="alert alert-default">
	<strong>Taglibs used: </strong>

	<span class="badge badge-primary">liferay-ui:quick-access</span>
</div>

<liferay-ui:quick-access-entry label="skip-to-search" />
