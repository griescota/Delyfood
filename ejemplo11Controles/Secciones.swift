//
//  Secciones.swift
//  ejemplo11Controles
//
//  Created by Administrador on 2/6/22.
//  Copyright © 2022 MIMO. All rights reserved.
//

import UIKit

class Secciones: NSObject {
        
    var cabecera: String
    var items: [String]
    
    init(titulo: String, objetos: [String]) {
        cabecera=titulo
        items = objetos
    }
    
}
