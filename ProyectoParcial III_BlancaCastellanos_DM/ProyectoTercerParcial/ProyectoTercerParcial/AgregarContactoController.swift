//
//  AgregarContactoController.swift
//  ProyectoTercerParcial
//
//  Created by Alumno on 18/11/21.
//

import Foundation
import UIKit

class AgregarContactoController : UIViewController {
    
    @IBOutlet weak var txtId: UITextField!
    @IBOutlet weak var txtNombre: UITextField!
    @IBOutlet weak var txtMarca: UITextField!
    @IBOutlet weak var txtTipo: UITextField!
    @IBOutlet weak var txtPrecio: UITextField!
    @IBOutlet weak var txtOferta: UITextField!
    @IBOutlet weak var txtCantidad: UITextField!
    @IBOutlet weak var txtProovedor: UITextField!
    @IBOutlet weak var txtDescripcion: UITextField!
    @IBOutlet weak var txtInformacion: UITextField!
    
    
    var callBackAgregarProducto : ((Producto) -> Void)?
    override func viewDidLoad() {
        self.title = "Agregar Producto"
    }
    
    @IBAction func doTapGuardar(_ sender: Any) {
        let id = txtId.text!
        let nombre = txtNombre.text!
        let marca = txtMarca.text!
        let tipo = txtTipo.text!
        let precio = txtPrecio.text!
        let oferta = txtOferta.text!
        let cantidad = txtCantidad.text!
        let proovedor = txtProovedor.text!
        let descripcion = txtDescripcion.text!
        let informacion = txtInformacion.text!
        
        let producto = Producto(id: id, nombre: nombre, marca: marca, tipo: tipo, precio: precio, oferta: oferta, cantidad: cantidad, proovedor: proovedor, descripcion: descripcion, informacion: informacion)
        
        callBackAgregarProducto!(producto)
        
        self.navigationController?.popViewController(animated: true)
    }
    
}
