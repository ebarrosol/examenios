//
//  AdminNotas.swift
//  BlockNotas
//
//  Created by Efren Alejandro Barroso Llanes on 13/06/15.
//  Copyright (c) 2015 EBL. All rights reserved.
//

import UIKit

var adminnot:AdminNotas = AdminNotas();

struct nota
{
    var nombre = "Por defecto"
    var descrip = "Por defecto"
}

class AdminNotas: NSObject
{
    var notas = [nota]()
    
    func agregarNotas(_nombre: String, _descrip :String)
    {
        notas.append(nota(nombre: _nombre, descrip: _descrip))
    }
    
    
}
