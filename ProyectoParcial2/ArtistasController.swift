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
    
    var cancion1: [Cancion] = []
    var cancion2: [Cancion] = []
    var cancion3: [Cancion] = []
    var cancion4: [Cancion] = []
    var cancion5: [Cancion] = []
    var cancion6: [Cancion] = []
    var cancion7: [Cancion] = []
    var cancion8: [Cancion] = []
    var cancion9: [Cancion] = []
    var cancion10: [Cancion] = []
    var cancion11: [Cancion] = []
    var cancion12: [Cancion] = []
    var cancion13: [Cancion] = []
    var cancion14: [Cancion] = []
    var cancion15: [Cancion] = []
    
    
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
        
        //aqui ya son los 5 de prueba
        cancion1.append(Cancion(cancion: "cancion de prueba", portada: "girlinred"))
        cancion1.append(Cancion(cancion: "cancion de prueba", portada: "girlinred"))
        cancion1.append(Cancion(cancion: "cancion de prueba", portada: "girlinred"))
        cancion1.append(Cancion(cancion: "cancion de prueba", portada: "girlinred"))
        cancion1.append(Cancion(cancion: "cancion de prueba", portada: "girlinred"))

        
        cancion2.append(Cancion(cancion: "cancion de prueba", portada: "badbunny"))
        cancion2.append(Cancion(cancion: "cancion de prueba", portada: "badbunny"))
        cancion2.append(Cancion(cancion: "cancion de prueba", portada: "badbunny"))
        cancion2.append(Cancion(cancion: "cancion de prueba", portada: "badbunny"))
        cancion2.append(Cancion(cancion: "cancion de prueba", portada: "badbunny"))
        
        cancion3.append(Cancion(cancion: "cancion de prueba", portada: "girlinred"))
        cancion3.append(Cancion(cancion: "cancion de prueba", portada: "girlinred"))
        cancion3.append(Cancion(cancion: "cancion de prueba", portada: "girlinred"))
        cancion3.append(Cancion(cancion: "cancion de prueba", portada: "girlinred"))
        cancion3.append(Cancion(cancion: "cancion de prueba", portada: "girlinred"))
        
        
        cancion4.append(Cancion(cancion: "cancion de prueba", portada: "girlinred"))
        
        cancion5.append(Cancion(cancion: "cancion de prueba", portada: "girlinred"))
        
        cancion6.append(Cancion(cancion: "cancion de prueba", portada: "girlinred"))
        
        cancion7.append(Cancion(cancion: "cancion de prueba", portada: "girlinred"))
        
        cancion8.append(Cancion(cancion: "cancion de prueba", portada: "girlinred"))
        
        cancion9.append(Cancion(cancion: "cancion de prueba", portada: "girlinred"))
        
        cancion10.append(Cancion(cancion: "cancion de prueba", portada: "girlinred"))
        
        cancion11.append(Cancion(cancion: "cancion de prueba", portada: "girlinred"))
        
        cancion12.append(Cancion(cancion: "cancion de prueba", portada: "girlinred"))
        
        cancion13.append(Cancion(cancion: "cancion de prueba", portada: "girlinred"))
        
        cancion14.append(Cancion(cancion: "cancion de prueba", portada: "girlinred"))
        
        cancion15.append(Cancion(cancion: "cancion de prueba", portada: "girlinred"))
        
        
        
        artistas.append(Artista(nombretitulo: "Girl in Red", nombre: "Girl in Red", nacimiento: "ss", nacionalidad: "xx", ocupacion: "xx", seudo: "xx", genero: "Indie pop, Bedroom pop, Indie rock", instrumentos: "zxx",  edad: "23 años", icon: "girlinred", canciones: cancion1))
        
        artistas.append(Artista(nombretitulo: "Girl in Red", nombre: "Girl in Red", nacimiento: "ss", nacionalidad: "xx", ocupacion: "xx", seudo: "xx", genero: "lo-fi, pop alternativo, pop barroco, indie pop, indie rock, folk y folk rock", instrumentos: "zxx", edad: "23 años", icon: "clairo", canciones: cancion2))
        
        artistas.append(Artista(nombretitulo: "Girl in Red", nombre: "Girl in Red", nacimiento: "ss", nacionalidad: "xx", ocupacion: "xx", seudo: "xx", genero: "Trap, reguetón, hip hop, rap, dembow, dancehall", instrumentos: "zxx",  edad: "28 años", icon: "badbunny", canciones: cancion3))
        
        artistas.append(Artista(nombretitulo: "Girl in Red", nombre: "Girl in Red", nacimiento: "ss", nacionalidad: "xx", ocupacion: "xx", seudo: "xx", genero: "Pop latino, dancehall, moombahton, reggaeton", instrumentos: "zxx", edad: "30 años", icon: "dannyocean", canciones: cancion4))
        
        artistas.append(Artista(nombretitulo: "Girl in Red", nombre: "Girl in Red", nacimiento: "ss", nacionalidad: "xx", ocupacion: "xx", seudo: "xx", genero: "Pop, disco, house, dance pop, R&B", instrumentos: "zxx", edad: "27 años", icon: "dualipa",canciones: cancion5))
        
        artistas.append(Artista(nombretitulo: "Girl in Red", nombre: "Girl in Red", nacimiento: "ss", nacionalidad: "xx", ocupacion: "xx", seudo: "xx", genero: "Pop, indie pop, art pop, música experimental", instrumentos: "zxx", edad: "20 años", icon: "billieeilish",canciones: cancion6))
        
        artistas.append(Artista(nombretitulo: "Girl in Red", nombre: "Girl in Red", nacimiento: "ss", nacionalidad: "xx", ocupacion: "xx", seudo: "xx", genero: "Indie pop, Bedroom pop", instrumentos: "zxx", edad: "30 años", icon: "stillwoozy", canciones: cancion7))
        
        artistas.append(Artista(nombretitulo: "Girl in Red", nombre: "Girl in Red", nacimiento: "ss", nacionalidad: "xx", ocupacion: "xx", seudo: "xx", genero: "Soft rock, glam rock, pop britpop, rock", instrumentos: "zxx", edad: "28 años", icon: "harrystyles", canciones: cancion8))
        
        artistas.append(Artista(nombretitulo: "Girl in Red", nombre: "Girl in Red", nacimiento: "ss", nacionalidad: "xx", ocupacion: "xx", seudo: "xx", genero: "Pop, Pop-rock, Disco Electropop, Dance pop, Synth-pop", instrumentos: "zxx", edad: "37 años", icon: "katyperry", canciones: cancion9))
        
        artistas.append(Artista(nombretitulo: "Girl in Red", nombre: "Girl in Red", nacimiento: "ss", nacionalidad: "xx", ocupacion: "xx", seudo: "xx", genero: "Indie pop, Bedroom pop, Indie rock", instrumentos: "zxx", edad: "30 años", icon: "vancejoy", canciones: cancion10))
        
        artistas.append(Artista(nombretitulo: "Girl in Red", nombre: "Girl in Red", nacimiento: "ss", nacionalidad: "xx", ocupacion: "xx", seudo: "xx", genero: "Indie pop, Bedroom pop, Indie rock", instrumentos: "zxx", edad: "23 años", icon: "joji", canciones: cancion11))
        
        artistas.append(Artista(nombretitulo: "Girl in Red", nombre: "Girl in Red", nacimiento: "ss", nacionalidad: "xx", ocupacion: "xx", seudo: "xx", genero: "Indie pop, Bedroom pop, Indie rock", instrumentos: "zxx", edad: "23 años", icon: "laurenjauregui", canciones: cancion12))
        
        artistas.append(Artista(nombretitulo: "Girl in Red", nombre: "Girl in Red", nacimiento: "ss", nacionalidad: "xx", ocupacion: "xx", seudo: "xx", genero: "Indie pop, Bedroom pop, Indie rock", instrumentos: "zxx", edad: "23 años", icon: "taylorswift", canciones: cancion13))
        
        artistas.append(Artista(nombretitulo: "Girl in Red", nombre: "Girl in Red", nacimiento: "ss", nacionalidad: "xx", ocupacion: "xx", seudo: "xx", genero: "Indie pop, Bedroom pop, Indie rock", instrumentos: "zxx", edad: "23 años", icon: "halsey", canciones: cancion14))
        
        artistas.append(Artista(nombretitulo: "Girl in Red", nombre: "Girl in Red", nacimiento: "ss", nacionalidad: "xx", ocupacion: "xx", seudo: "xx", genero: "Indie pop, Bedroom pop, Indie rock", instrumentos: "zxx", edad: "23 años", icon: "mileycyrus",canciones: cancion15))
        
    }
    
    
}
