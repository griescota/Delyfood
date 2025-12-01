//
//  DataManager.swift
//  ejemplo11Controles
//
//  Created by Administrador on 1/6/22.
//  Copyright © 2022 MIMO. All rights reserved.
//

import Foundation
class DataManager{
    static let sharedInstance = DataManager()
    
    var usuarios = [Usuario(name: "admin", password: "admin"),
                    Usuario(name: "german", password: "german"),
                    Usuario(name: "juan", password: "juan")]
   
    var data: String?
    func save (){
        UserDefaults.standard.set(data, forKey: "data")
        
    }
    
    func load(){
        if let text = UserDefaults.standard.string(forKey: "data") {
            data=text
        }
        
    }
}
