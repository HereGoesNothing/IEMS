
<%@ page import="uk.co.ideascabin.elevator.Log" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'log.label', default: 'Log')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-log" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-log" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="authorisedUser" title="${message(code: 'log.authorisedUser.label', default: 'Authorised User')}" />
					
						<g:sortableColumn property="calledFloor" title="${message(code: 'log.calledFloor.label', default: 'Called Floor')}" />
					
						<g:sortableColumn property="callingFloor" title="${message(code: 'log.callingFloor.label', default: 'Calling Floor')}" />
					
						<g:sortableColumn property="carNo" title="${message(code: 'log.carNo.label', default: 'Car No')}" />
					
						<g:sortableColumn property="dateTimeLog" title="${message(code: 'log.dateTimeLog.label', default: 'Date Time Log')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${logInstanceList}" status="i" var="logInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${logInstance.id}">${fieldValue(bean: logInstance, field: "authorisedUser")}</g:link></td>
					
						<td>${fieldValue(bean: logInstance, field: "calledFloor")}</td>
					
						<td>${fieldValue(bean: logInstance, field: "callingFloor")}</td>
					
						<td>${fieldValue(bean: logInstance, field: "carNo")}</td>
					
						<td><g:formatDate date="${logInstance.dateTimeLog}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${logInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
