package test.controlescolar

class Alumno {

    String apellidoPaterno
    String apellidoMaterno
    String nombre
    Integer edad

    static constraints = {
        apellidoPaterno(maxSize: 50)
        apellidoMaterno(maxSize: 50)
        nombre(maxSize: 50)
    }

    static mapping = {
        id(generator:'sequence', params:[sequence:'alumno_id_seq'])
    }

    String toString() {
        apellidoPaterno + ' ' + apellidoMaterno + ' ' + nombre
    }
}
