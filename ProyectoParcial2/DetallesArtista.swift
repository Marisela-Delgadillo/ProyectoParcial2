//
//  DetallesArtista.swift
//  ProyectoParcial2
//
//  Created by Alumno on 10/6/22.
//  Copyright © 2022 Alumno. All rights reserved.
//

import UIKit

class DetallesArtista : UIViewController, UITableViewDelegate, UITableViewDataSource {
    var artista : Artista?
    //var cancion : Cancion?

    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 66
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (artista?.canciones.count)!
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaCancion") as! CeldaCancionController
        celda.lblCancion.text = artista!.canciones[indexPath.row].cancion
        celda.imgPortada.image = UIImage(named: artista!.canciones[indexPath.row].portada)
        
        //celda.imgPortada.image = UIImage(named: cancion![indexPath.row]!.portada)
        //celda.imgPortada.image = UIImage(named: canciones![indexPath.row]!.portada)
        return celda
    }
    
    @IBOutlet weak var lblNombreTitulo: UILabel!
    @IBOutlet weak var lblNombre: UILabel!
    @IBOutlet weak var lblFecha: UILabel!
    @IBOutlet weak var lblNacionalidad: UILabel!
    @IBOutlet weak var lblOcupacion: UILabel!
    @IBOutlet weak var lblSeudo: UILabel!
    @IBOutlet weak var lblGenero: UILabel!
    @IBOutlet weak var lblInstrumentos: UILabel!
    
    @IBOutlet weak var tvCanciones: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if artista != nil{
            self.title = artista!.nombre
            lblNombreTitulo.text = artista!.nombretitulo
            lblNombre.text = artista!.nombre
            lblFecha.text = artista!.nacimiento
            lblNacionalidad.text = artista!.nacionalidad
            lblOcupacion.text = artista!.ocupacion
            lblSeudo.text = artista!.seudo
            lblGenero.text = artista!.genero
            lblInstrumentos.text = artista!.instrumentos
        
            //lblMatricula.text = alumno?.matricula
            //lblEdad.text = "\(alumno!.edad)"
            //lblCarrera.text = alumno!.carrera
        } else{
            self.title = "Artista"
        }
    }
    
    
}
