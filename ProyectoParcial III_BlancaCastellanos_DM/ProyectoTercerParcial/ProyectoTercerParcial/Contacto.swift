//
//  Contacto.swift
//  ProyectoTercerParcial
//
//  Created by Alumno on 18/11/21.
//

import Foundation

class Producto {
    var id : String
    var nombre : String
    var marca : String
    var tipo : String
    var precio : String
    var oferta : String
    var cantidad : String
    var proovedor : String
    var descripcion: String
    var informacion : String

    init(id: String, nombre: String, marca: String, tipo: String, precio: String, oferta: String, cantidad: String, proovedor: String, descripcion: String, informacion: String){
        self.id = id
        self.nombre = nombre
        self.marca = marca
        self.tipo = tipo
        self.precio = precio
        self.oferta = oferta
        self.cantidad = cantidad
        self.proovedor = proovedor
        self.descripcion = descripcion
        self.informacion = informacion
    }
}
