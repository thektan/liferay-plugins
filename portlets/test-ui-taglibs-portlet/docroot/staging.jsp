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
String cmd = Constants.EXPORT;

Map<String, String[]> parameterMap = (Map<String, String[]>)GetterUtil.getObject(request.getAttribute("liferay-staging:content:parameterMap"), Collections.emptyMap());

String type = GetterUtil.getString(request.getAttribute("liferay-staging:content:type"));

List<Portlet> dataSiteLevelPortlets = ExportImportHelperUtil.getDataSiteLevelPortlets(company.getCompanyId(), false);
%>

<div class="alert alert-default">
	<strong>Taglibs used: </strong>

	<span class="badge badge-primary">staging:menu</span>

	<span class="badge badge-primary">staging:configuration-header</span>

	<span class="badge badge-primary">staging:content</span>

	<span class="badge badge-primary">staging:deletions</span>

	<span class="badge badge-primary">staging:portlet-list</span>
</div>

<h3>liferay-staging:menu</h3>

<liferay-staging:menu cssClass="publish-link" extended="<%= false %>" onlyActions="<%= true %>" />

<br />

<h3>liferay-staging:configuration-header</h3>

<liferay-staging:configuration-header />

<br />

<h3>liferay-staging:content</h3>

<%-- <liferay-staging:content /> --%>

<liferay-staging:content disableInputs="<%= true %>" parameterMap="<%= parameterMap %>" type="<%= cmd %>" />

<br />

<h3>liferay-staging:deletions</h3>

<liferay-staging:deletions />

<br />

<h3>liferay-staging:portlet-list</h3>

<%-- <liferay-staging:portlet-list /> --%>

<liferay-staging:portlet-list dateRange="" disableInputs="" parameterMap="<%= parameterMap %>" portlets="<%= dataSiteLevelPortlets %>" type="<%= type %>" />
