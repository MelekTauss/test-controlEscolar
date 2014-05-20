import test.controlescolar.Alumno
import test.controlescolar.Materia
import test.controlescolar.Profesor

class BootStrap {

    def init = { servletContext ->
        if (!Alumno.count()) {
            new Alumno(id: 1, apellidoPaterno: 'SÁNCHEZ', apellidoMaterno: 'PÉREZ', nombre: 'JUÁN ALBERTO', edad: 36).save(failOnError:true)
            new Alumno(id: 2, apellidoPaterno: 'MÉNDEZ', apellidoMaterno: 'OROPEZA', nombre: 'RAQUEL', edad: 24).save(failOnError:true)
        }

        if (!Profesor.count()) {
            new Profesor(id: 1, apellidoPaterno: 'ROJAS', apellidoMaterno: 'RENDÓN', nombre: 'ADRIANA').save(failOnError:true)
            new Profesor(id: 2, apellidoPaterno: 'CABRERA', apellidoMaterno: 'MONTALVO', nombre: 'SANTIAGO').save(failOnError:true)
        }

        if (!Materia.count()) {
            new Materia(id: 1, nombre: 'LENGUAJE DE PROGRAMACIÓN II', grupo: 'TIC-47').save(failOnError:true)
            new Materia(id: 2, nombre: 'AUDITORÍA DE SISTEMAS INFORMÁTICOS', grupo: 'TIC-46').save(failOnError:true)
        }
    }
    def destroy = {
    }
}
