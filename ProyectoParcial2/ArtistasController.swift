//
//  ArtistasController.swift
//  ProyectoParcial2
//
//  Created by Alumno on 10/4/22.
//  Copyright © 2022 Alumno. All rights reserved.
//

import UIKit

class ArtistasController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var tvArtista: UITableView!
    
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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destino = segue.destination as! DetallesArtista
        destino.artista = artistas[tvArtista.indexPathForSelectedRow!.row]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        artistas.append(Artista(nombretitulo: "Girl in Red", nombre: "Girl in Red", nacimiento: "ss", nacionalidad: "xx", ocupacion: "xx", seudo: "xx", genero: "Indie pop, Bedroom pop, Indie rock", instrumentos: "zxx",  edad: "23 años", icon: "girlinred"))
        
        artistas.append(Artista(nombretitulo: "Girl in Red", nombre: "Girl in Red", nacimiento: "ss", nacionalidad: "xx", ocupacion: "xx", seudo: "xx", genero: "lo-fi, pop alternativo, pop barroco, indie pop, indie rock, folk y folk rock", instrumentos: "zxx", edad: "23 años", icon: "clairo"))
        
        artistas.append(Artista(nombretitulo: "Girl in Red", nombre: "Girl in Red", nacimiento: "ss", nacionalidad: "xx", ocupacion: "xx", seudo: "xx", genero: "Trap, reguetón, hip hop, rap, dembow, dancehall", instrumentos: "zxx",  edad: "28 años", icon: "badbunny"))
        
        artistas.append(Artista(nombretitulo: "Girl in Red", nombre: "Girl in Red", nacimiento: "ss", nacionalidad: "xx", ocupacion: "xx", seudo: "xx", genero: "Pop latino, dancehall, moombahton, reggaeton", instrumentos: "zxx", edad: "30 años", icon: "dannyocean"))
        
        artistas.append(Artista(nombretitulo: "Girl in Red", nombre: "Girl in Red", nacimiento: "ss", nacionalidad: "xx", ocupacion: "xx", seudo: "xx", genero: "Pop, disco, house, dance pop, R&B", instrumentos: "zxx", edad: "27 años", icon: "dualipa"))
        
        artistas.append(Artista(nombretitulo: "Girl in Red", nombre: "Girl in Red", nacimiento: "ss", nacionalidad: "xx", ocupacion: "xx", seudo: "xx", genero: "Pop, indie pop, art pop, música experimental", instrumentos: "zxx", edad: "20 años", icon: "billieeilish"))
        
        artistas.append(Artista(nombretitulo: "Girl in Red", nombre: "Girl in Red", nacimiento: "ss", nacionalidad: "xx", ocupacion: "xx", seudo: "xx", genero: "Indie pop, Bedroom pop", instrumentos: "zxx", edad: "30 años", icon: "stillwoozy"))
        
        artistas.append(Artista(nombretitulo: "Girl in Red", nombre: "Girl in Red", nacimiento: "ss", nacionalidad: "xx", ocupacion: "xx", seudo: "xx", genero: "Soft rock, glam rock, pop britpop, rock", instrumentos: "zxx", edad: "28 años", icon: "harrystyles"))
        
        artistas.append(Artista(nombretitulo: "Girl in Red", nombre: "Girl in Red", nacimiento: "ss", nacionalidad: "xx", ocupacion: "xx", seudo: "xx", genero: "Pop, Pop-rock, Disco Electropop, Dance pop, Synth-pop", instrumentos: "zxx", edad: "37 años", icon: "katyperry"))
        
        artistas.append(Artista(nombretitulo: "Girl in Red", nombre: "Girl in Red", nacimiento: "ss", nacionalidad: "xx", ocupacion: "xx", seudo: "xx", genero: "Indie pop, Bedroom pop, Indie rock", instrumentos: "zxx", edad: "30 años", icon: "vancejoy"))
        
        artistas.append(Artista(nombretitulo: "Girl in Red", nombre: "Girl in Red", nacimiento: "ss", nacionalidad: "xx", ocupacion: "xx", seudo: "xx", genero: "Indie pop, Bedroom pop, Indie rock", instrumentos: "zxx", edad: "23 años", icon: "joji"))
        
        artistas.append(Artista(nombretitulo: "Girl in Red", nombre: "Girl in Red", nacimiento: "ss", nacionalidad: "xx", ocupacion: "xx", seudo: "xx", genero: "Indie pop, Bedroom pop, Indie rock", instrumentos: "zxx", edad: "23 años", icon: "laurenjauregui"))
        
        artistas.append(Artista(nombretitulo: "Girl in Red", nombre: "Girl in Red", nacimiento: "ss", nacionalidad: "xx", ocupacion: "xx", seudo: "xx", genero: "Indie pop, Bedroom pop, Indie rock", instrumentos: "zxx", edad: "23 años", icon: "taylorswift"))
        
        artistas.append(Artista(nombretitulo: "Girl in Red", nombre: "Girl in Red", nacimiento: "ss", nacionalidad: "xx", ocupacion: "xx", seudo: "xx", genero: "Indie pop, Bedroom pop, Indie rock", instrumentos: "zxx", edad: "23 años", icon: "halsey"))
        
        artistas.append(Artista(nombretitulo: "Girl in Red", nombre: "Girl in Red", nacimiento: "ss", nacionalidad: "xx", ocupacion: "xx", seudo: "xx", genero: "Indie pop, Bedroom pop, Indie rock", instrumentos: "zxx", edad: "23 años", icon: "mileycyrus"))
        
    }
    
    
}
