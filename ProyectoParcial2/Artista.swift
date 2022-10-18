//
//  Artista.swift
//  ProyectoParcial2
//
//  Created by Alumno on 10/4/22.
//  Copyright © 2022 Alumno. All rights reserved.
//

class Artista {
    var nombretitulo : String
    var nombre : String
    var nacimiento : String
    var nacionalidad : String
    var ocupacion : String
    var seudo : String
    var genero: String
    var instrumentos : String
    var edad: String
    var icon: String
    var foto: String
    
    var canciones : [Cancion]
    
    init(nombretitulo: String,nombre: String, nacimiento: String, nacionalidad: String, ocupacion : String, seudo : String,  genero: String, instrumentos: String, edad: String, icon: String, foto: String, canciones: [Cancion]){
    self.nombretitulo = nombretitulo
    self.nombre = nombre
    self.nacimiento = nacimiento
    self.nacionalidad = nacionalidad
    self.ocupacion = ocupacion
    self.seudo = seudo
    self.genero = genero
    self.instrumentos = instrumentos
    self.edad = edad
    self.icon = icon
    self.canciones = canciones
    self.foto = foto
        
    }
}
