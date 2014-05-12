<%@ page import="uk.co.ideascabin.elevator.Log" %>



<div class="fieldcontain ${hasErrors(bean: logInstance, field: 'authorisedUser', 'error')} ">
	<label for="authorisedUser">
		<g:message code="log.authorisedUser.label" default="Authorised User" />
		
	</label>
	<g:checkBox name="authorisedUser" value="${logInstance?.authorisedUser}" />
</div>

<div class="fieldcontain ${hasErrors(bean: logInstance, field: 'calledFloor', 'error')} required">
	<label for="calledFloor">
		<g:message code="log.calledFloor.label" default="Called Floor" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="calledFloor" type="number" value="${logInstance.calledFloor}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: logInstance, field: 'callingFloor', 'error')} required">
	<label for="callingFloor">
		<g:message code="log.callingFloor.label" default="Calling Floor" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="callingFloor" type="number" value="${logInstance.callingFloor}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: logInstance, field: 'carNo', 'error')} required">
	<label for="carNo">
		<g:message code="log.carNo.label" default="Car No" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="carNo" type="number" value="${logInstance.carNo}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: logInstance, field: 'dateTimeLog', 'error')} required">
	<label for="dateTimeLog">
		<g:message code="log.dateTimeLog.label" default="Date Time Log" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dateTimeLog" precision="day"  value="${logInstance?.dateTimeLog}"  />
</div>

