//
//  Usuario.swift
//  ejemplo11Controles
//
//  Created by Administrador on 1/6/22.
//  Copyright © 2022 MIMO. All rights reserved.
//


import Foundation
class Usuario {
    var UsuarioNom: String?
    var pssword: String?
    
    init(name:String?, password:String?){
        self.UsuarioNom = name;
        self.pssword = password;
    }
}
