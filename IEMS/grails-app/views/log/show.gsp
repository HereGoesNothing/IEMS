
<%@ page import="uk.co.ideascabin.elevator.Log" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'log.label', default: 'Log')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-log" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-log" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list log">
			
				<g:if test="${logInstance?.authorisedUser}">
				<li class="fieldcontain">
					<span id="authorisedUser-label" class="property-label"><g:message code="log.authorisedUser.label" default="Authorised User" /></span>
					
						<span class="property-value" aria-labelledby="authorisedUser-label"><g:formatBoolean boolean="${logInstance?.authorisedUser}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${logInstance?.calledFloor}">
				<li class="fieldcontain">
					<span id="calledFloor-label" class="property-label"><g:message code="log.calledFloor.label" default="Called Floor" /></span>
					
						<span class="property-value" aria-labelledby="calledFloor-label"><g:fieldValue bean="${logInstance}" field="calledFloor"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${logInstance?.callingFloor}">
				<li class="fieldcontain">
					<span id="callingFloor-label" class="property-label"><g:message code="log.callingFloor.label" default="Calling Floor" /></span>
					
						<span class="property-value" aria-labelledby="callingFloor-label"><g:fieldValue bean="${logInstance}" field="callingFloor"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${logInstance?.carNo}">
				<li class="fieldcontain">
					<span id="carNo-label" class="property-label"><g:message code="log.carNo.label" default="Car No" /></span>
					
						<span class="property-value" aria-labelledby="carNo-label"><g:fieldValue bean="${logInstance}" field="carNo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${logInstance?.dateTimeLog}">
				<li class="fieldcontain">
					<span id="dateTimeLog-label" class="property-label"><g:message code="log.dateTimeLog.label" default="Date Time Log" /></span>
					
						<span class="property-value" aria-labelledby="dateTimeLog-label"><g:formatDate date="${logInstance?.dateTimeLog}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${logInstance?.id}" />
					<g:link class="edit" action="edit" id="${logInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
