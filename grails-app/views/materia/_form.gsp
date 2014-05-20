<%@ page import="test.controlescolar.Materia" %>



<div class="fieldcontain ${hasErrors(bean: materiaInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="materia.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" maxlength="80" required="" value="${materiaInstance?.nombre}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: materiaInstance, field: 'grupo', 'error')} required">
	<label for="grupo">
		<g:message code="materia.grupo.label" default="Grupo" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="grupo" maxlength="7" required="" value="${materiaInstance?.grupo}"/>
</div>

