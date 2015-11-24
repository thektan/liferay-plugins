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

	<span class="badge badge-primary">aui:form</span>
	<span class="badge badge-primary">aui:select</span>
	<span class="badge badge-primary">aui:option</span>
	<span class="badge badge-primary">aui:fieldset</span>
	<span class="badge badge-primary">aui:field-wrapper</span>
	<span class="badge badge-primary">aui:input</span>
	<span class="badge badge-primary">ui:input-checkbox</span>
	<span class="badge badge-primary">ui:input-date</span>
	<span class="badge badge-primary">ui:input-localized</span>
	<span class="badge badge-primary">ui:input-move-boxes</span>
	<span class="badge badge-primary">ui:input-permissions</span>
	<span class="badge badge-primary">ui:input-repeat</span>
	<span class="badge badge-primary">ui:input-resource</span>
	<span class="badge badge-primary">ui:input-scheduler</span>
	<span class="badge badge-primary">ui:input-search</span>
	<span class="badge badge-primary">ui:input-select</span>
	<span class="badge badge-primary">ui:input-textarea</span>
	<span class="badge badge-primary">ui:input-time</span>
	<span class="badge badge-primary">ui:input-time-zone</span>
</div>

<aui:form>
	<h4>aui:select and aui:option</h4>

	<aui:select name="SelectBox" value="select option" >
		<aui:option value="Option 1"><liferay-ui:message key="Option 1" /></aui:option>

		<aui:option value="Option 2"><liferay-ui:message key="Option 2" /></aui:option>

		<aui:option value="Option 3"><liferay-ui:message key="Option 3" /></aui:option>
	</aui:select>

	<br />

	<h4>aui:input</h4>

	<aui:fieldset>
		<aui:field-wrapper>
			<aui:input name="Text" type="text" />

			<aui:input name="Checkbox" type="checkbox" />
		</aui:field-wrapper>

			<aui:input name="Textarea" type="textarea" />

			<aui:input name="TextEditor" type="editor" editorImpl="editor.wysiwyg.portal-web.docroot.html.taglib.ui.email_notification_settings.jsp" />

			<aui:input name="Radio" type="radio" />

			<aui:input name="TimeZone" type="timeZone" />
	</aui:fieldset>

	<br />

	<h4>ui:input-checkbox</h4>

	<liferay-ui:input-checkbox param="Checkbox" formName="Checkbox Name" />

	<br />

	<h4>ui:input-date</h4>

	<liferay-ui:input-date />

	<br />

	<h4>ui:input-field (model = SCLicense)</h4>

	<liferay-ui:input-field field="active" defaultValue="<%= Boolean.TRUE %>" model="<%= SCLicense.class %>" />

	<h4>ui:input-field (model = SCProductEntry)</h4>

	<liferay-ui:input-field field="pageURL" model="<%= SCProductEntry.class %>" />

	<br />

	<h4>ui:input-localized</h4>

	<liferay-ui:input-localized name="input localized" xml="" />

	<br />

	<h4>ui:input-move-boxes</h4>

	<%
	List<KeyValuePair> list = new ArrayList<KeyValuePair>();

	list.add(new KeyValuePair("key1", "item1"));
	list.add(new KeyValuePair("key2", "item2"));
	list.add(new KeyValuePair("key3", "item3"));
	list.add(new KeyValuePair("key4", "item4"));
	list.add(new KeyValuePair("key5", "item5"));
	%>

	<liferay-ui:input-move-boxes
		leftBoxName="Left Box Name"
		leftList="<%= list %>"
		leftReorder="true"
		leftTitle="Left Title"
		rightBoxName="Right Box Name"
		rightList="<%= list %>"
		rightReorder="true"
		rightTitle="Right Title"
	/>

	<br />

	<h4>ui:input-permissions</h4>

	<liferay-ui:input-permissions />

	<br /><br />

	<h4>ui:input-repeat</h4>

	<liferay-ui:input-repeat />

	<br />

	<h4>ui:input-resource</h4>

	<liferay-ui:input-resource url="http://www.liferay.com" />

	<br />

	<h4>ui:input-scheduler</h4>

	<liferay-ui:input-scheduler />

	<br />

	<h4>ui:input-search</h4>

	<liferay-ui:input-search />

	<br />

	<h4>ui:input-select</h4>

	<liferay-ui:input-select param="" />

	<br />

	<h4>ui:input-textarea</h4>

	<liferay-ui:input-textarea param="" />

	<br />

	<h4>ui:input-time</h4>

	<liferay-ui:input-time name="Time" amPmParam="ampm" hourParam="hour" minuteParam="minute" />

	<br />

	<h4>ui:input-time-zone</h4>

	<liferay-ui:input-time-zone name="time zone" />

</aui:form>
