
<%@ page import="test.controlescolar.Calificacion" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'calificacion.label', default: 'Calificacion')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-calificacion" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-calificacion" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="calificacionAlumno" title="${message(code: 'calificacion.calificacionAlumno.label', default: 'Calificacion Alumno')}" />
					
						<g:sortableColumn property="observaciones" title="${message(code: 'calificacion.observaciones.label', default: 'Observaciones')}" />
					
						<th><g:message code="calificacion.alumno.label" default="Alumno" /></th>
					
						<th><g:message code="calificacion.materia.label" default="Materia" /></th>
					
						<th><g:message code="calificacion.profesor.label" default="Profesor" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${calificacionInstanceList}" status="i" var="calificacionInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${calificacionInstance.id}">${fieldValue(bean: calificacionInstance, field: "calificacionAlumno")}</g:link></td>
					
						<td>${fieldValue(bean: calificacionInstance, field: "observaciones")}</td>
					
						<td>${fieldValue(bean: calificacionInstance, field: "alumno")}</td>
					
						<td>${fieldValue(bean: calificacionInstance, field: "materia")}</td>
					
						<td>${fieldValue(bean: calificacionInstance, field: "profesor")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${calificacionInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
