package test.controlescolar

class Calificacion {

    Alumno alumno
    Profesor profesor
    Materia materia
    Double calificacionAlumno
    String observaciones

    static constraints = {
        calificacionAlumno(scale: 1)
        observaciones(maxSize:300)
    }

    static namedQueries = {
        aprobados {
            ge('calificacionAlumno', 6.0)
        }

        reprobados {
            le('calificacionAlumno', 5.9)
        }
    }

    static mapping = {
        id(generator:'sequence', params:[sequence:'calificacion_id_seq'])
    }
}
