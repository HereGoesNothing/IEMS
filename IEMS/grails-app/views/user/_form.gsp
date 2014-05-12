<%@ page import="uk.co.ideascabin.elevator.User" %>



<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'authorisedUser', 'error')} ">
	<label for="authorisedUser">
		<g:message code="user.authorisedUser.label" default="Authorised User" />
		
	</label>
	<g:checkBox name="authorisedUser" value="${userInstance?.authorisedUser}" />
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'userID', 'error')} required">
	<label for="userID">
		<g:message code="user.userID.label" default="User ID" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="userID" type="number" value="${userInstance.userID}" required=""/>
</div>

