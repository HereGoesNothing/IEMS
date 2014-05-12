<%@ page import="uk.co.ideascabin.elevator.Car" %>



<div class="fieldcontain ${hasErrors(bean: carInstance, field: 'carNo', 'error')} required">
	<label for="carNo">
		<g:message code="car.carNo.label" default="Car No" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="carNo" type="number" value="${carInstance.carNo}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: carInstance, field: 'parked', 'error')} ">
	<label for="parked">
		<g:message code="car.parked.label" default="Parked" />
		
	</label>
	<g:checkBox name="parked" value="${carInstance?.parked}" />
</div>

<div class="fieldcontain ${hasErrors(bean: carInstance, field: 'travellingUp', 'error')} ">
	<label for="travellingUp">
		<g:message code="car.travellingUp.label" default="Travelling Up" />
		
	</label>
	<g:checkBox name="travellingUp" value="${carInstance?.travellingUp}" />
</div>

