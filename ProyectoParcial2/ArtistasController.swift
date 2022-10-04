//
//  ArtistasController.swift
//  ProyectoParcial2
//
//  Created by Alumno on 10/4/22.
//  Copyright © 2022 Alumno. All rights reserved.
//

import UIKit

class ArtistasController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var artistas : [Artista] = []
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 86.5
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return artistas.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaArtista") as! CeldaArtistaController
        celda.lblNombre.text = artistas[indexPath.row].nombre
        celda.lblEdad.text = artistas[indexPath.row].edad
        celda.lblGenero.text = artistas[indexPath.row].genero
        celda.imgIcon.image = UIImage(named: artistas[indexPath.row].icon)
        
        return celda
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        artistas.append(Artista(nombre: "Girl in Red", genero: "Indie pop, Bedroom pop, Indie rock", edad: "23 años", icon: "girlinred"))
        artistas.append(Artista(nombre: "Clairo", genero: "Indie pop, Bedroom pop, Indie rock", edad: "23 años", icon: "clairo"))
        artistas.append(Artista(nombre: "Bad Bunny", genero: "Indie pop, Bedroom pop, Indie rock", edad: "23 años", icon: "badbunny"))
        artistas.append(Artista(nombre: "Danny Ocean", genero: "Indie pop, Bedroom pop, Indie rock", edad: "23 años", icon: "dannyocean"))
        artistas.append(Artista(nombre: "Dua Lipa", genero: "Indie pop, Bedroom pop, Indie rock", edad: "23 años", icon: "dualipa"))
        artistas.append(Artista(nombre: "Billie Eilish", genero: "Indie pop, Bedroom pop, Indie rock", edad: "23 años", icon: "billieeilish"))
        artistas.append(Artista(nombre: "Still Woozy", genero: "Indie pop, Bedroom pop, Indie rock", edad: "23 años", icon: "stillwoozy"))
        artistas.append(Artista(nombre: "Tame Impala", genero: "Indie pop, Bedroom pop, Indie rock", edad: "23 años", icon: "tameimpala"))
        artistas.append(Artista(nombre: "Apricot Ink", genero: "Indie pop, Bedroom pop, Indie rock", edad: "23 años", icon: "joji"))
        artistas.append(Artista(nombre: "Joji", genero: "Indie pop, Bedroom pop, Indie rock", edad: "23 años", icon: "tameimpala"))
        artistas.append(Artista(nombre: "Lauren Jauregui", genero: "Indie pop, Bedroom pop, Indie rock", edad: "23 años", icon: "laurenjauregui"))
        artistas.append(Artista(nombre: "Taylor Swift", genero: "Indie pop, Bedroom pop, Indie rock", edad: "23 años", icon: "taylorswift"))
    }
    
    
}
