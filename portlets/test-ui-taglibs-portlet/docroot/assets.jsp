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

	ServiceContext serviceContext = new ServiceContext();

	AssetVocabulary assetVocabTest = AssetVocabularyLocalServiceUtil.createAssetVocabulary(12356362623L);

	AssetCategoryException testCategoryException = new AssetCategoryException(
		assetVocabTest, AssetCategoryException.TOO_MANY_CATEGORIES);

	AssetTagException testTagException = new AssetTagException(AssetTagException.AT_LEAST_ONE_TAG);

	SessionErrors.add(portletRequest, testCategoryException.getClass(), testCategoryException);
	SessionErrors.add(portletRequest, testTagException.getClass(), testTagException);

	SessionMessages.add(portletRequest, PortalUtil.getPortletId(portletRequest) + SessionMessages.KEY_SUFFIX_HIDE_DEFAULT_ERROR_MESSAGE);
%>

<div class="alert alert-default">
	<strong>Taglibs used: </strong>

	<span class="badge badge-primary">liferay-ui:asset-categories-error</span>

	<span class="badge badge-primary">liferay-ui:asset-categories-navigation</span>

	<span class="badge badge-primary">liferay-ui:asset-categories-selector</span>

	<span class="badge badge-primary">liferay-ui:asset-categories-summary</span>

	<span class="badge badge-primary">liferay-ui:asset-links</span>

	<span class="badge badge-primary">liferay-ui:asset-tags-error</span>

	<span class="badge badge-primary">liferay-ui:asset-tags-navigation</span>

	<span class="badge badge-primary">liferay-ui:asset-tags-selector</span>

	<span class="badge badge-primary">liferay-ui:asset-tags-summary</span>

	<span class="badge badge-primary">liferay-ui:categorization-filter</span>

	<span class="badge badge-primary">liferay-ui:input-asset-links</span>
</div>

<h3>ui:asset-categories-error</h3>

<liferay-ui:asset-categories-error />

<h3>ui:asset-categories-navigation</h3>

<liferay-ui:asset-categories-navigation hidePortletWhenEmpty="<%= false %>"/>

<h3>ui:asset-categories-selector</h3>

<liferay-ui:asset-categories-selector />

<h3>ui:asset-categories-summary</h3>

<liferay-ui:asset-categories-summary
	className=""
	classPK=""
/>

<h3>ui:asset-links</h3>

<liferay-ui:asset-links assetEntryId="" />

<h3>ui:asset-tags-error</h3>

<liferay-ui:asset-tags-error />

<h3>ui:asset-tags-navigation</h3>

<%
long classNameId = PrefsParamUtil.getLong(portletPreferences, request, "classNameId");
String displayStyle = PrefsParamUtil.getString(portletPreferences, request, "displayStyle", "cloud");
long displayStyleGroupId = PrefsParamUtil.getLong(portletPreferences, request, "displayStyleGroupId", themeDisplay.getScopeGroupId());
int maxAssetTags = PrefsParamUtil.getInteger(portletPreferences, request, "maxAssetTags", 10);
boolean showAssetCount = PrefsParamUtil.getBoolean(portletPreferences, request, "showAssetCount");
boolean showZeroAssetCount = PrefsParamUtil.getBoolean(portletPreferences, request, "showZeroAssetCount");
%>

<liferay-ui:asset-tags-navigation
	classNameId="<%= classNameId %>"
	displayStyle="<%= displayStyle %>"
	hidePortletWhenEmpty="<%= false %>"
	maxAssetTags="<%= maxAssetTags %>"
	showAssetCount="<%= showAssetCount %>"
	showZeroAssetCount="<%= showZeroAssetCount %>"
/>

<h3>ui:asset-tags-selector</h3>

<liferay-ui:asset-tags-selector />

<h3>ui:asset-tags-summary</h3>

<%
// long assetEntryId = ParamUtil.getLong(request, "assetEntryId");
// AssetRendererFactory<?> assetRendererFactory = AssetRendererFactoryRegistryUtil.getAssetRendererFactoryByType(type);
//
// AssetEntry assetEntry = assetRendererFactory.getAssetEntry(assetEntryId);
%>

<liferay-ui:asset-tags-summary
	className=""
	classPK=""
/>

<h3>ui:categorization-filter</h3>

<liferay-ui:categorization-filter
	assetType="content"
	portletURL="<%= portletURL %>"
/>

<h3>ui:input-asset-links</h3>

<liferay-ui:input-asset-links />
