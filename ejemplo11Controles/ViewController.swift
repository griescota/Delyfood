//
//  ViewController.swift
//  ejemplo11Controles
//
//  Created by MIMO on 25/2/20.
//  Copyright © 2020 MIMO. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  
    

        @IBOutlet weak var emailText: UITextField!
       @IBOutlet weak var contraseñaText: UITextField!
       
      
       //ARRAY DE USUARIOS
       var usuarios = [Usuario]()
       
       let userManager=DataManager.sharedInstance
       var actualusuario:String=""
      
       
        override func viewDidLoad() {
            super.viewDidLoad()
          // title = "login"
      
           usuarios=userManager.usuarios
                   
       }
       //REGISTRARSE
       @IBAction func singnUpButton(_ sender: Any) {
           let usuarioText = emailText.text
           let contrText = contraseñaText.text
           
           if(emailText.text=="" || contraseñaText.text==""){
               
               //Avisamos
               //Primero las creamos
               let alerta = UIAlertController(title: "Error", message: "Los campos son obligatorios, rellenelos", preferredStyle: .alert)//PRINCIPAL
              
               
               let alertaAceptar = UIAlertAction(title: "Aceptar", style: .default, handler: nil)
               
               alerta.addAction(alertaAceptar)
               
               present(alerta, animated: true, completion: nil)
               
              
               return
       }
           for iUsuario in usuarios{
                       
                       //Si ya hay un usuario con el mismo nombre...
               if(iUsuario.UsuarioNom==usuarioText){
                           
                           //Mismo usuario advertencia
                           let alertController = UIAlertController(title: "Error", message: "Existe el mismo email", preferredStyle: .alert)
                           alertController.addAction(UIAlertAction(title: "Aceptar", style: .default, handler: nil))
                   //Lo muestra
                           present(alertController, animated: true, completion: nil)
                          
                  
                           return
                       }
                   }
          
           //Si todo va bien guardamos el usuario con su contraseña
           //Creamos variable
           let añadir = Usuario(name: usuarioText, password: contrText)
           //Añadimos gingleton
           userManager.usuarios.append(añadir)
           
           //Vaciamos los textField
           emailText.text=""
           contraseñaText.text=""
         
       }
       
       //Acceder
       @IBAction func logInButton(_ sender: Any) {
           //Valores de nuestro data base
           usuarios=userManager.usuarios
           
           let usuarioText = emailText.text
           let contrText = contraseñaText.text
           
           var igualEmailContraseña = false
           
           // miramos si los text field estan vacios
           if(emailText.text=="" || contraseñaText.text==""){
               let alerta = UIAlertController(title: "Error de textField vacio", message: "Vuelve intente rellenar los datos", preferredStyle: .alert)
                           
                           alerta.addAction(UIAlertAction(title: "Aceptar", style: .default, handler: nil))
                           
                           present(alerta, animated: true, completion: nil)
               return
           }else{
               for iUsuario in usuarios{
                              
                              
                   if(iUsuario.UsuarioNom==usuarioText && iUsuario.pssword==contrText)
                              {
                                 
                                  igualEmailContraseña=true
                                  
                                  //Guardamos el valor de nuestro usuario actual
                                  //actualusuario=iUsuario.usuario!
                                  break
                              }
                          }
               if(igualEmailContraseña==false){
                             
                             //Si no se ha encontrado, mostramos un mensaje por pantalla. Comunicamos que el usuario aún no está registrado
                             
                             let alerta = UIAlertController(title: "Error", message: "El usuario no existe en nuestra base de datos :(", preferredStyle: .alert)
                             
                             alerta.addAction(UIAlertAction(title: "Aceptar", style: .default, handler: nil))
                             
                             present(alerta, animated: true, completion: nil)
                         }
                          
               
           }
           
       }
   }
       




