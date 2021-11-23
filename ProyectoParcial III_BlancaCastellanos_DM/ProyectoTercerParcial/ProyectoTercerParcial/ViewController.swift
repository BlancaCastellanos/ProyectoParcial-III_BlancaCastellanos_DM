//
//  ViewController.swift
//  ProyectoTercerParcial
//
//  Created by Alumno on 18/11/21.
//

import UIKit

var productos : [Producto] = []

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var tvProductos: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return productos.count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "CeldaContacto") as! CeldaContactoController
        celda.lblNombre.text = productos[indexPath.row].nombre
        celda.lblMarca.text = "\("Marca: ") \(productos[indexPath.row].marca)"
        celda.lblPrecio.text = productos[indexPath.row].precio
        celda.lblOferta.text = "\("Oferta: ") \(productos[indexPath.row].oferta)"
        
        return celda
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToVer" {
            let productoSeleccionado = productos[tvProductos.indexPathForSelectedRow!.row]
            let destino = segue.destination as! VerContactoController
            destino.producto = productoSeleccionado
            destino.indice = tvProductos.indexPathForSelectedRow!.row
            destino.callbackActualizarTVProductos = actualizarTVProductos
            destino.callbackEliminarProducto = eliminarProducto
        }
        
        if segue.identifier == "goToCreacion" {
            let destino = segue.destination as! AgregarContactoController
            destino.callBackAgregarProducto = agregarProducto
        }
    }
    
    
    override func viewDidLoad() {
        self.title = "Lista de Productos"
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        productos.append(Producto(id: "1", nombre: "Atun Chilo", marca: "El Marinero", tipo: "Comida Enlatada", precio: "$20", oferta: "2x$30", cantidad: "30", proovedor: "Comida Enlatada Express", descripcion: "Atun en lata en agua", informacion: "Siempre disponible"))
        productos.append(Producto(id: "2", nombre: "Paketaxo Azul", marca: "Frito-Lay", tipo: "Botana", precio: "$45", oferta: "Ninguna", cantidad: "13", proovedor: "Sabritas", descripcion: "Botana de distintos tipos", informacion: "Incluye Cheetos, Doritos 3D y palomitas"))
        productos.append(Producto(id: "3", nombre: "Tonayan", marca: "Tonayan", tipo: "Bebida Alcoholica", precio: "$20", oferta: "3x2", cantidad: "18", proovedor: "Don Pepe", descripcion: "Destilado de Caña", informacion: "Buena para la fiesta"))
        productos.append(Producto(id: "4", nombre: "Coca Cola 600 ml", marca: "Coca Cola", tipo: "Bebida Gaseosa", precio: "$18", oferta: "Ninguna", cantidad: "50", proovedor: "Coca Cola", descripcion: "Es una soda popular", informacion: "600 ml"))
        productos.append(Producto(id: "5", nombre: "Manzana", marca: "Huerto Feliz", tipo: "Fruta", precio: "$50/kg", oferta: "Ninguna", cantidad: "80", proovedor: "Don Pancho", descripcion: "Manzanas Rojas importadas directamente del rancho", informacion: "Estan frescas"))
        productos.append(Producto(id: "6", nombre: "Platano Chiapas", marca: "Huerto Feliz", tipo: "Fruta", precio: "$5.90/kg", oferta: "Ninguna", cantidad: "70", proovedor: "Don Pancho", descripcion: "Platano traido de Chiapas", informacion: "Buen precio"))
        productos.append(Producto(id: "7", nombre: "Cigarro", marca: "Marlboro", tipo: "Cigarro", precio: "$65", oferta: "2x110", cantidad: "19", proovedor: "Marlboro", descripcion: "Cigarrillos Marlboro", informacion: "Excelente para relajarse"))
        productos.append(Producto(id: "8", nombre: "Pan Blanco", marca: "Bimbo", tipo: "Pan", precio: "$40", oferta: "Ninguna", cantidad: "31", proovedor: "Bimbo", descripcion: "Barra de pan", informacion: "Tamaño Grande"))
        productos.append(Producto(id: "9", nombre: "Jalapeños", marca: "La Costeña", tipo: "Comida Enlatada", precio: "$12", oferta: "Ninguna", cantidad: "74", proovedor: "Comida Enlatada Express", descripcion: "Jalapeños enlatados", informacion: "Siempre disponible"))
        productos.append(Producto(id: "10", nombre: "Gansito", marca: "Marinela", tipo: "Pan", precio: "$13", oferta: "Ninguna", cantidad: "24", proovedor: "Bimbo", descripcion: "Pastelito dulce de marinela", informacion: "Esta relleno de crema y mermelada de fresa y cubierto de chocolate"))

    }
    
    func actualizarTVProductos() {
        tvProductos.reloadData()
    }
    
    func eliminarProducto(indice : Int) {
        productos.remove(at: indice)
        actualizarTVProductos()
    }
    
    func agregarProducto(producto: Producto) {
        productos.append(producto)
        actualizarTVProductos()
    }
}

