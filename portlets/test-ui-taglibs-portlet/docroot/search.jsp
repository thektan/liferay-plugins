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

<div class="alert alert-default">
	<strong>Taglibs used: </strong>

	<span class="badge badge-primary">liferay-ui:search-container</span>

	<span class="badge badge-primary">liferay-ui:search-container-results</span>

	<span class="badge badge-primary">liferay-ui:search-iterator</span>
</div>

<%
List<String> sampleResults = Arrays.asList("Result1", "Result2", "Result3");
%>

<liferay-ui:search-container>
	<liferay-ui:search-container-results
		results="<%= sampleResults %>"
	/>
	<liferay-ui:search-iterator markupView="lexicon"/>
</liferay-ui:search-container>
