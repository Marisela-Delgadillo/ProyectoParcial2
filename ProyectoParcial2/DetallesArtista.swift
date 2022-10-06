//
//  DetallesArtista.swift
//  ProyectoParcial2
//
//  Created by Alumno on 10/6/22.
//  Copyright © 2022 Alumno. All rights reserved.
//

import UIKit

class DetallesArtista : UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 66
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return (artista?.canciones.count)!
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaCancion") as! CeldaCancionController
        celda.lblNombre.text = alumno!.materias[indexPath.row].nombre
        celda.lblCodigo.text = alumno!.materias[indexPath.row].codigo
        return celda
    }
    
    
}
