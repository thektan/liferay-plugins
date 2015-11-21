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
// List<String> sampleResults = Arrays.asList("Result1", "Result2", "Result3");
%>

<div class="alert alert-default">
	<strong>Taglibs used: </strong>

	<span class="badge badge-primary">liferay-ui:search-container</span>

	<span class="badge badge-primary">liferay-ui:search-container-results</span>

	<span class="badge badge-primary">liferay-ui:search-iterator</span>
</div>

<%-- <liferay-ui:search-container>
	<liferay-ui:search-container-results
		results="<%= sampleResults %>"
	/>
	<liferay-ui:search-iterator markupView="lexicon"/>
</liferay-ui:search-container> --%>

<liferay-ui:search-container delta="10" emptyResultsMessage="no-users-were-found">
	<%-- <liferay-ui:search-container-results
		results="<%= UserLocalServiceUtil.search(
			company.getCompanyId(), searchTerms.getKeywords(), searchTerms.getActiveObj(),
			userParams, searchContainer.getStart(), searchContainer.getEnd(),
 			searchContainer.getOrderByComparator()); %>"
		total="<%= UserLocalServiceUtil.searchCount(
			company.getCompanyId(), searchTerms.getKeywords(), searchTerms.getActiveObj(),
			userParams); %>"
	/> --%>

	<liferay-ui:search-container-row
		className="com.liferay.portal.model.User"
		keyProperty="userId"
		modelVar="user"
	>
		<liferay-ui:search-container-column-text
			name="name"
			value="<%= user.getFullName() %>"
		/>

		<liferay-ui:search-container-column-text
			name="first-name"
			property="firstName"
		/>
	</liferay-ui:search-container-row>

	<liferay-ui:search-iterator />

</liferay-ui:search-container>
