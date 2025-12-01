//
//  ModeloDeDatos.swift
//  ejemplo11Controles
//
//  Created by Administrador on 2/6/22.
//  Copyright © 2022 MIMO. All rights reserved.
//

import UIKit

class ModeloDeDatos: NSObject {
    func obtenerSecionesDesdeDatos() ->[Secciones]{
        var seccionesArray = [Secciones]()
        let primeros = Secciones(titulo: "Primeros", objetos: ["Patatas","Ensalada","Macarrones"])
        let segundos = Secciones(titulo: "Segundo", objetos: ["Pizza","Burrito","Hamburguesas","Kebap", "Arroz tres delicias"])
        let postres = Secciones(titulo: "Postres", objetos: ["Helado","Brownie", "Tarta de queso","Tarta de chocolate"])
        let Cocteles = Secciones(titulo: "Cócteles", objetos: ["ANGEL FACE", "APPLE DE LIRIA","APPLE MARTINI", "ARRIVAL (Espíritu Isleño)","AVIATION"])
        
        seccionesArray.append(primeros)
        seccionesArray.append(segundos)
        seccionesArray.append(postres )
        seccionesArray.append(Cocteles)
        
        return seccionesArray
        
    }
}
