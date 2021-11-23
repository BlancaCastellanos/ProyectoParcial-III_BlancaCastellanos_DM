//
//  EditarContactoController.swift
//  ProyectoTercerParcial
//
//  Created by Alumno on 18/11/21.
//

import Foundation
import UIKit

class EditarContactoController : UIViewController {
    
    var contacto : Contacto?
    var callbackActualizarTVContactos : (() -> Void)?
    
    @IBOutlet weak var txtNombre: UITextField!
    @IBOutlet weak var txtApellido: UITextField!
    @IBOutlet weak var txtId: UITextField!
    @IBOutlet weak var txtSexo: UITextField!
    @IBOutlet weak var txtPais: UITextField!
    @IBOutlet weak var txtEntidad: UITextField!
    @IBOutlet weak var txtLocalidad: UITextField!
    @IBOutlet weak var txtDireccion: UITextField!
    @IBOutlet weak var txtCelular: UITextField!
    @IBOutlet weak var txtCorreo: UITextField!
    
    override func viewDidLoad() {
        self.title = "Editar Contacto"
        
        txtNombre.text = contacto!.nombre
        txtApellido.text = contacto!.apellido
        txtId.text = contacto!.id
        txtSexo.text = contacto!.sexo
        txtPais.text = contacto!.pais
        txtEntidad.text = contacto!.entidad
        txtLocalidad.text = contacto!.localidad
        txtDireccion.text = contacto!.direccion
        txtCelular.text = contacto!.celular
        txtCorreo.text = contacto!.correo
    }
    
    @IBAction func doTapGuardar(_ sender: Any) {
        contacto!.nombre = txtNombre.text!
        contacto!.apellido = txtApellido.text!
        contacto!.id = txtId.text!
        contacto!.sexo = txtSexo.text!
        contacto!.pais = txtPais.text!
        contacto!.entidad = txtEntidad.text!
        contacto!.localidad = txtLocalidad.text!
        contacto!.direccion = txtDireccion.text!
        contacto!.celular = txtCelular.text!
        contacto!.correo = txtCorreo.text!
        
        callbackActualizarTVContactos!()
    }
}
