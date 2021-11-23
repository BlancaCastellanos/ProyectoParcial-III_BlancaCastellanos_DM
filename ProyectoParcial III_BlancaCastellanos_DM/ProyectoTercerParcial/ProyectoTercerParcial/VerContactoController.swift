//
//  VerContactoController.swift
//  ProyectoTercerParcial
//
//  Created by Alumno on 18/11/21.
//

import Foundation
import UIKit

class VerContactoController : UIViewController {
    
    var indice : Int = -1
    var producto : Producto?
    var callbackActualizarTVProductos : (() -> Void)?
    var callbackEliminarProducto : ((Int) -> Void)?
    
    @IBOutlet weak var lblId: UILabel!
    @IBOutlet weak var lblNombre: UILabel!
    @IBOutlet weak var lblMarca: UILabel!
    @IBOutlet weak var lblTipo: UILabel!
    @IBOutlet weak var lblPrecio: UILabel!
    @IBOutlet weak var lblOferta: UILabel!
    @IBOutlet weak var lblCantidad: UILabel!
    @IBOutlet weak var lblProovedor: UILabel!
    @IBOutlet weak var lblDescripcion: UILabel!
    @IBOutlet weak var lblInformacion: UILabel!
    
    @IBOutlet weak var lblIdEditar: UILabel!
    @IBOutlet weak var lblNombreEditar: UILabel!
    @IBOutlet weak var lblMarcaEditar: UILabel!
    @IBOutlet weak var lblTipoEditar: UILabel!
    @IBOutlet weak var lblPrecioEditar: UILabel!
    @IBOutlet weak var lblOfertaEditar: UILabel!
    @IBOutlet weak var lblCantidadEditar: UILabel!
    @IBOutlet weak var lblProovedorEditar: UILabel!
    @IBOutlet weak var lblDescripcionEditar: UILabel!
    @IBOutlet weak var lblInformacionEditar: UILabel!
    
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
    
    @IBOutlet weak var btnBorrar: UIButton!
    @IBOutlet weak var btnEditar: UIButton!
    @IBOutlet weak var btnGuardar: UIButton!
    @IBOutlet weak var btnCancelar: UIButton!
    
    override func viewDidLoad() {
        self.title = "Ver Producto"
        
        lblId.text = "\("ID: ") \(producto!.id)"
        lblNombre.text = producto!.nombre
        lblMarca.text = "\("Marca: ") \(producto!.marca)"
        lblTipo.text = "\("Tipo: ") \(producto!.tipo)"
        lblPrecio.text = producto!.precio
        lblOferta.text = "\("Oferta: ") \(producto!.oferta)"
        lblCantidad.text = "\("Cantidad: ") \(producto!.cantidad)"
        lblProovedor.text = "\("Proovedor: ") \(producto!.proovedor)"
        lblDescripcion.text = "\("Descripcion: ") \(producto!.descripcion)"
        lblInformacion.text = "\("Informacion: ") \(producto!.informacion)"
        
        txtId.text = producto!.id
        txtNombre.text = producto!.nombre
        txtMarca.text = producto!.marca
        txtTipo.text = producto!.tipo
        txtPrecio.text = producto!.precio
        txtOferta.text = producto!.oferta
        txtCantidad.text = producto!.cantidad
        txtProovedor.text = producto!.proovedor
        txtDescripcion.text = producto!.descripcion
        txtInformacion.text = producto!.informacion
    }
    @IBAction func doTapEliminar(_ sender: Any) {
        callbackEliminarProducto!(indice)
        self.navigationController!.popViewController(animated: true)
    }
    
    @IBAction func doTapEditar(_ sender: Any) {
        self.title = "Editar Producto"
        btnEditar.isEnabled = false
        btnEditar.isHidden = true
        btnBorrar.isEnabled = false
        btnBorrar.isHidden = true
        btnGuardar.isEnabled = true
        btnGuardar.isHidden = false
        btnCancelar.isEnabled = true
        btnCancelar.isHidden = false
        
        lblId.isHidden = true
        lblNombre.isHidden = true
        lblMarca.isHidden = true
        lblTipo.isHidden = true
        lblPrecio.isHidden = true
        lblOferta.isHidden = true
        lblCantidad.isHidden = true
        lblProovedor.isHidden = true
        lblDescripcion.isHidden = true
        lblInformacion.isHidden = true
        
        lblIdEditar.isHidden = false
        lblNombreEditar.isHidden = false
        lblMarcaEditar.isHidden = false
        lblTipoEditar.isHidden = false
        lblPrecioEditar.isHidden = false
        lblOfertaEditar.isHidden = false
        lblCantidadEditar.isHidden = false
        lblProovedorEditar.isHidden = false
        lblDescripcionEditar.isHidden = false
        lblInformacionEditar.isHidden = false
        
        txtId.isEnabled = true
        txtId.isHidden = false
        txtNombre.isEnabled = true
        txtNombre.isHidden = false
        txtMarca.isEnabled = true
        txtMarca.isHidden = false
        txtTipo.isEnabled = true
        txtTipo.isHidden = false
        txtPrecio.isEnabled = true
        txtPrecio.isHidden = false
        txtOferta.isEnabled = true
        txtOferta.isHidden = false
        txtCantidad.isEnabled = true
        txtCantidad.isHidden = false
        txtProovedor.isEnabled = true
        txtProovedor.isHidden = false
        txtDescripcion.isEnabled = true
        txtDescripcion.isHidden = false
        txtInformacion.isEnabled = true
        txtInformacion.isHidden = false
    }
    
    @IBAction func doTapGuardar(_ sender: Any) {
        self.title = "Ver Producto"
        btnEditar.isEnabled = true
        btnEditar.isHidden = false
        btnBorrar.isEnabled = true
        btnBorrar.isHidden = false
        btnGuardar.isEnabled = false
        btnGuardar.isHidden = true
        btnCancelar.isEnabled = false
        btnCancelar.isHidden = true
        
        lblId.isHidden = false
        lblNombre.isHidden = false
        lblMarca.isHidden = false
        lblTipo.isHidden = false
        lblPrecio.isHidden = false
        lblOferta.isHidden = false
        lblCantidad.isHidden = false
        lblProovedor.isHidden = false
        lblDescripcion.isHidden = false
        lblInformacion.isHidden = false
        
        lblIdEditar.isHidden = true
        lblNombreEditar.isHidden = true
        lblMarcaEditar.isHidden = true
        lblTipoEditar.isHidden = true
        lblPrecioEditar.isHidden = true
        lblOfertaEditar.isHidden = true
        lblCantidadEditar.isHidden = true
        lblProovedorEditar.isHidden = true
        lblDescripcionEditar.isHidden = true
        lblInformacionEditar.isHidden = true
        
        txtId.isEnabled = false
        txtId.isHidden = true
        txtNombre.isEnabled = false
        txtNombre.isHidden = true
        txtMarca.isEnabled = false
        txtMarca.isHidden = true
        txtTipo.isEnabled = false
        txtTipo.isHidden = true
        txtPrecio.isEnabled = false
        txtPrecio.isHidden = true
        txtOferta.isEnabled = false
        txtOferta.isHidden = true
        txtCantidad.isEnabled = false
        txtCantidad.isHidden = true
        txtProovedor.isEnabled = false
        txtProovedor.isHidden = true
        txtDescripcion.isEnabled = false
        txtDescripcion.isHidden = true
        txtInformacion.isEnabled = false
        txtInformacion.isHidden = true
        
        producto!.id = txtId.text!
        producto!.nombre = txtNombre.text!
        producto!.marca = txtMarca.text!
        producto!.tipo = txtTipo.text!
        producto!.precio = txtPrecio.text!
        producto!.oferta = txtOferta.text!
        producto!.cantidad = txtCantidad.text!
        producto!.proovedor = txtProovedor.text!
        producto!.descripcion = txtDescripcion.text!
        producto!.informacion = txtInformacion.text!
        
        lblId.text = txtId.text!
        lblNombre.text = txtNombre.text!
        lblMarca.text = txtMarca.text!
        lblTipo.text = txtTipo.text!
        lblPrecio.text = txtPrecio.text!
        lblOferta.text = txtOferta.text!
        lblCantidad.text = txtCantidad.text!
        lblProovedor.text = txtProovedor.text!
        lblDescripcion.text = txtDescripcion.text!
        lblInformacion.text = txtInformacion.text!
        
        callbackActualizarTVProductos!()
    }
    
    @IBAction func doTapCancelar(_ sender: Any) {
        self.title = "Ver Producto"
        btnEditar.isEnabled = true
        btnEditar.isHidden = false
        btnBorrar.isEnabled = true
        btnBorrar.isHidden = false
        btnGuardar.isEnabled = false
        btnGuardar.isHidden = true
        btnCancelar.isEnabled = false
        btnCancelar.isHidden = true
        
        lblId.isHidden = false
        lblNombre.isHidden = false
        lblMarca.isHidden = false
        lblTipo.isHidden = false
        lblPrecio.isHidden = false
        lblOferta.isHidden = false
        lblCantidad.isHidden = false
        lblProovedor.isHidden = false
        lblDescripcion.isHidden = false
        lblInformacion.isHidden = false
        
        lblIdEditar.isHidden = true
        lblNombreEditar.isHidden = true
        lblMarcaEditar.isHidden = true
        lblTipoEditar.isHidden = true
        lblPrecioEditar.isHidden = true
        lblOfertaEditar.isHidden = true
        lblCantidadEditar.isHidden = true
        lblProovedorEditar.isHidden = true
        lblDescripcionEditar.isHidden = true
        lblInformacionEditar.isHidden = true
        
        txtId.isEnabled = false
        txtId.isHidden = true
        txtNombre.isEnabled = false
        txtNombre.isHidden = true
        txtMarca.isEnabled = false
        txtMarca.isHidden = true
        txtTipo.isEnabled = false
        txtTipo.isHidden = true
        txtPrecio.isEnabled = false
        txtPrecio.isHidden = true
        txtOferta.isEnabled = false
        txtOferta.isHidden = true
        txtCantidad.isEnabled = false
        txtCantidad.isHidden = true
        txtProovedor.isEnabled = false
        txtProovedor.isHidden = true
        txtDescripcion.isEnabled = false
        txtDescripcion.isHidden = true
        txtInformacion.isEnabled = false
        txtInformacion.isHidden = true
        
        txtId.text = producto!.id
        txtNombre.text = producto!.nombre
        txtMarca.text = producto!.marca
        txtTipo.text = producto!.tipo
        txtPrecio.text = producto!.precio
        txtOferta.text = producto!.oferta
        txtCantidad.text = producto!.cantidad
        txtProovedor.text = producto!.proovedor
        txtDescripcion.text = producto!.descripcion
        txtInformacion.text = producto!.informacion
    }
    
    
}
