<%@ page import="test.controlescolar.Calificacion" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'calificacion.label', default: 'Calificacion')}"/>
    <title><g:message code="default.show.label" args="[entityName]"/></title>
</head>

<body>
<a href="#show-calificacion" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                                   default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]"/></g:link></li>
        <li><g:link class="create" action="create"><g:message code="default.new.label"
                                                              args="[entityName]"/></g:link></li>
    </ul>
</div>

<div id="show-calificacion" class="content scaffold-show" role="main">
    <h1><g:message code="default.show.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <ol class="property-list calificacion">

        <g:if test="${calificacionInstance?.calificacionAlumno}">
            <li class="fieldcontain">
                <span id="calificacionAlumno-label" class="property-label"><g:message
                        code="calificacion.calificacionAlumno.label" default="Calificacion Alumno"/></span>

                <span class="property-value" aria-labelledby="calificacionAlumno-label"><g:fieldValue
                        bean="${calificacionInstance}" field="calificacionAlumno"/></span>

            </li>
        </g:if>

        <g:if test="${calificacionInstance?.observaciones}">
            <li class="fieldcontain">
                <span id="observaciones-label" class="property-label"><g:message code="calificacion.observaciones.label"
                                                                                 default="Observaciones"/></span>

                <span class="property-value" aria-labelledby="observaciones-label"><g:fieldValue
                        bean="${calificacionInstance}" field="observaciones"/></span>

            </li>
        </g:if>

        <g:if test="${calificacionInstance?.alumno}">
            <li class="fieldcontain">
                <span id="alumno-label" class="property-label"><g:message code="calificacion.alumno.label"
                                                                          default="Alumno"/></span>

                <span class="property-value" aria-labelledby="alumno-label"><g:link controller="alumno" action="show"
                                                                                    id="${calificacionInstance?.alumno?.id}">${calificacionInstance?.alumno?.encodeAsHTML()}</g:link></span>

            </li>
        </g:if>

        <g:if test="${calificacionInstance?.materia}">
            <li class="fieldcontain">
                <span id="materia-label" class="property-label"><g:message code="calificacion.materia.label"
                                                                           default="Materia"/></span>

                <span class="property-value" aria-labelledby="materia-label"><g:link controller="materia" action="show"
                                                                                     id="${calificacionInstance?.materia?.id}">${calificacionInstance?.materia?.encodeAsHTML()}</g:link></span>

            </li>
        </g:if>

        <g:if test="${calificacionInstance?.profesor}">
            <li class="fieldcontain">
                <span id="profesor-label" class="property-label"><g:message code="calificacion.profesor.label"
                                                                            default="Profesor"/></span>

                <span class="property-value" aria-labelledby="profesor-label"><g:link controller="profesor"
                                                                                      action="show"
                                                                                      id="${calificacionInstance?.profesor?.id}">${calificacionInstance?.profesor?.encodeAsHTML()}</g:link></span>

            </li>
        </g:if>

    </ol>
    <g:form>
        <fieldset class="buttons">
            <g:hiddenField name="id" value="${calificacionInstance?.id}"/>
            <g:link class="edit" action="edit" id="${calificacionInstance?.id}"><g:message
                    code="default.button.edit.label" default="Edit"/></g:link>
            <g:actionSubmit class="delete" action="delete"
                            value="${message(code: 'default.button.delete.label', default: 'Delete')}"
                            onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"/>
        </fieldset>
    </g:form>
</div>
</body>
</html>
