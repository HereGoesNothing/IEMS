
<%@ page import="uk.co.ideascabin.elevator.Car" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'car.label', default: 'Car')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-car" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-car" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list car">
			
				<g:if test="${carInstance?.carNo}">
				<li class="fieldcontain">
					<span id="carNo-label" class="property-label"><g:message code="car.carNo.label" default="Car No" /></span>
					
						<span class="property-value" aria-labelledby="carNo-label"><g:fieldValue bean="${carInstance}" field="carNo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${carInstance?.parked}">
				<li class="fieldcontain">
					<span id="parked-label" class="property-label"><g:message code="car.parked.label" default="Parked" /></span>
					
						<span class="property-value" aria-labelledby="parked-label"><g:formatBoolean boolean="${carInstance?.parked}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${carInstance?.travellingUp}">
				<li class="fieldcontain">
					<span id="travellingUp-label" class="property-label"><g:message code="car.travellingUp.label" default="Travelling Up" /></span>
					
						<span class="property-value" aria-labelledby="travellingUp-label"><g:formatBoolean boolean="${carInstance?.travellingUp}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${carInstance?.id}" />
					<g:link class="edit" action="edit" id="${carInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
