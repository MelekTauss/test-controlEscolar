<%@ page import="test.controlescolar.Calificacion" %>



<div class="fieldcontain ${hasErrors(bean: calificacionInstance, field: 'calificacionAlumno', 'error')} required">
    <label for="calificacionAlumno">
        <g:message code="calificacion.calificacionAlumno.label" default="Calificacion Alumno"/>
        <span class="required-indicator">*</span>
    </label>
    <g:select name="calificacionAlumno" from="${0..10}" class="range" required=""
              value="${fieldValue(bean: calificacionInstance, field: 'calificacionAlumno')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: calificacionInstance, field: 'observaciones', 'error')} required">
    <label for="observaciones">
        <g:message code="calificacion.observaciones.label" default="Observaciones"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textArea name="observaciones" cols="40" rows="5" maxlength="300" required=""
                value="${calificacionInstance?.observaciones}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: calificacionInstance, field: 'alumno', 'error')} required">
    <label for="alumno">
        <g:message code="calificacion.alumno.label" default="Alumno"/>
        <span class="required-indicator">*</span>
    </label>
    <g:select id="alumno" name="alumno.id" from="${test.controlescolar.Alumno.list()}" optionKey="id" required=""
              value="${calificacionInstance?.alumno?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: calificacionInstance, field: 'materia', 'error')} required">
    <label for="materia">
        <g:message code="calificacion.materia.label" default="Materia"/>
        <span class="required-indicator">*</span>
    </label>
    <g:select id="materia" name="materia.id" from="${test.controlescolar.Materia.list()}" optionKey="id" required=""
              value="${calificacionInstance?.materia?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: calificacionInstance, field: 'profesor', 'error')} required">
    <label for="profesor">
        <g:message code="calificacion.profesor.label" default="Profesor"/>
        <span class="required-indicator">*</span>
    </label>
    <g:select id="profesor" name="profesor.id" from="${test.controlescolar.Profesor.list()}" optionKey="id" required=""
              value="${calificacionInstance?.profesor?.id}" class="many-to-one"/>
</div>

