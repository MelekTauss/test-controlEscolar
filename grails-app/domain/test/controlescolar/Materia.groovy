package test.controlescolar

class Materia {

    String nombre
    String grupo

    static constraints = {
        nombre(maxSize: 80)
        grupo(maxSize: 7)
    }

    static mapping = {
        id(generator:'sequence', params:[sequence:'materia_id_seq'])
    }

    String toString() {
        grupo + ' ' + nombre
    }
}
