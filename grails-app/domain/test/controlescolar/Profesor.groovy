package test.controlescolar

class Profesor {

    String apellidoPaterno
    String apellidoMaterno
    String nombre

    static constraints = {
        apellidoPaterno(maxSize: 50)
        apellidoMaterno(maxSize: 50)
        nombre(maxSize: 50)
    }

    static mapping = {
        id(generator:'sequence', params:[sequence:'profesor_id_seq'])
    }

    String toString() {
        apellidoPaterno + ' ' + apellidoMaterno + ' ' + nombre
    }
}
