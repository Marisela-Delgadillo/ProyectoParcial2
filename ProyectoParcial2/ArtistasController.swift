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
        celda.lblNombre.text = artistas[indexPath.row].nombretitulo
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
        cancion1.append(Cancion(cancion: "We fell in love in october", portada: "girlinred"))
        cancion1.append(Cancion(cancion: "I wanna be your girlfriend", portada: "girlinred"))
        cancion1.append(Cancion(cancion: "Midnight love", portada: "girlinred"))
        cancion1.append(Cancion(cancion: "Summer depression", portada: "girlinred"))
        cancion1.append(Cancion(cancion: "Rue", portada: "girlinred"))
        
        cancion2.append(Cancion(cancion: "Bags", portada: "girlinred"))
        cancion2.append(Cancion(cancion: "Sofia", portada: "girlinred"))
        cancion2.append(Cancion(cancion: "Pretty Girl", portada: "girlinred"))
        cancion2.append(Cancion(cancion: "Flammin Hot Cheetos", portada: "girlinred"))
        cancion2.append(Cancion(cancion: "Bubble Gum", portada: "girlinred"))
        
        cancion3.append(Cancion(cancion: "A tu merced", portada: "badbunny"))
        cancion3.append(Cancion(cancion: "Una vez", portada: "badbunny"))
        cancion3.append(Cancion(cancion: "Te mudaste", portada: "badbunny"))
        cancion3.append(Cancion(cancion: "Ojitos lindos", portada: "badbunny"))
        cancion3.append(Cancion(cancion: "Moscow Mule", portada: "badbunny"))
        
        cancion4.append(Cancion(cancion: "Kizombita para ti", portada: "girlinred"))
        cancion4.append(Cancion(cancion: "Me rehuso", portada: "girlinred"))
        cancion4.append(Cancion(cancion: "Vuelve", portada: "girlinred"))
        cancion4.append(Cancion(cancion: "Epa wei", portada: "girlinred"))
        cancion4.append(Cancion(cancion: "Veneno", portada: "girlinred"))
        
        cancion5.append(Cancion(cancion: "Levitating", portada: "girlinred"))
        cancion5.append(Cancion(cancion: "One Kiss", portada: "girlinred"))
        cancion5.append(Cancion(cancion: "New Rules", portada: "girlinred"))
        cancion5.append(Cancion(cancion: "New Love", portada: "girlinred"))
        cancion5.append(Cancion(cancion: "Cold Heart", portada: "girlinred"))
        
        cancion6.append(Cancion(cancion: "Bad guy", portada: "girlinred"))
        cancion6.append(Cancion(cancion: "Watch", portada: "girlinred"))
        cancion6.append(Cancion(cancion: "Lovely", portada: "girlinred"))
        cancion6.append(Cancion(cancion: "Everything i wanted", portada: "girlinred"))
        cancion6.append(Cancion(cancion: "wish you were gay", portada: "girlinred"))
        
        cancion7.append(Cancion(cancion: "Goodie bag", portada: "girlinred"))
        cancion7.append(Cancion(cancion: "Cooks", portada: "girlinred"))
        cancion7.append(Cancion(cancion: "Lucy", portada: "girlinred"))
        cancion7.append(Cancion(cancion: "Habit", portada: "girlinred"))
        cancion7.append(Cancion(cancion: "Lava", portada: "girlinred"))
        
        cancion8.append(Cancion(cancion: "Firework", portada: "girlinred"))
        cancion8.append(Cancion(cancion: "Teenage dream", portada: "girlinred"))
        cancion8.append(Cancion(cancion: "Part of me", portada: "girlinred"))
        cancion8.append(Cancion(cancion: "Last Friday Night", portada: "girlinred"))
        cancion8.append(Cancion(cancion: "The one that got away", portada: "girlinred"))
        
        cancion9.append(Cancion(cancion: "Riptide", portada: "girlinred"))
        cancion9.append(Cancion(cancion: "Saturday Sun", portada: "girlinred"))
        cancion9.append(Cancion(cancion: "Missing piece", portada: "girlinred"))
        cancion9.append(Cancion(cancion: "Clarity", portada: "girlinred"))
        cancion9.append(Cancion(cancion: "You", portada: "girlinred"))
        
        cancion10.append(Cancion(cancion: "Daylight", portada: "girlinred"))
        cancion10.append(Cancion(cancion: "Sanctuary", portada: "girlinred"))
        cancion10.append(Cancion(cancion: "Tick Tock", portada: "girlinred"))
        cancion10.append(Cancion(cancion: "777", portada: "girlinred"))
        cancion10.append(Cancion(cancion: "Pretty Boy", portada: "girlinred"))
        
        cancion11.append(Cancion(cancion: "Expectations", portada: "girlinred"))
        cancion11.append(Cancion(cancion: "Lento", portada: "girlinred"))
        cancion11.append(Cancion(cancion: "More than that", portada: "girlinred"))
        cancion11.append(Cancion(cancion: "50ft.", portada: "girlinred"))
        cancion11.append(Cancion(cancion: "Piña", portada: "girlinred"))
        
        cancion12.append(Cancion(cancion: "Don't blame me", portada: "girlinred"))
        cancion12.append(Cancion(cancion: "August", portada: "girlinred"))
        cancion12.append(Cancion(cancion: "Blank Space", portada: "girlinred"))
        cancion12.append(Cancion(cancion: "Lover", portada: "girlinred"))
        cancion12.append(Cancion(cancion: "Shake it off", portada: "girlinred"))
        
        cancion13.append(Cancion(cancion: "Closer", portada: "girlinred"))
        cancion13.append(Cancion(cancion: "Without me", portada: "girlinred"))
        cancion13.append(Cancion(cancion: "Strangers", portada: "girlinred"))
        cancion13.append(Cancion(cancion: "Gasoline", portada: "girlinred"))
        cancion13.append(Cancion(cancion: "Closer", portada: "girlinred"))
        
        cancion14.append(Cancion(cancion: "Party in the USA", portada: "girlinred"))
        cancion14.append(Cancion(cancion: "Prisioner", portada: "girlinred"))
        cancion14.append(Cancion(cancion: "We can't stop", portada: "girlinred"))
        cancion14.append(Cancion(cancion: "The Climb", portada: "girlinred"))
        cancion14.append(Cancion(cancion: "Angels like you", portada: "girlinred"))
        
        cancion15.append(Cancion(cancion: "Summer sadness", portada: "girlinred"))
        cancion15.append(Cancion(cancion: "Young and beautiful", portada: "girlinred"))
        cancion15.append(Cancion(cancion: "Doin' time", portada: "girlinred"))
        cancion15.append(Cancion(cancion: "Brooklyn baby", portada: "girlinred"))
        cancion15.append(Cancion(cancion: "West coast", portada: "girlinred"))
        
        
        
        artistas.append(Artista(nombretitulo: "Girl in Red", nombre: "Marie Ulven Ringheim", nacimiento: "16 de febrero de 1999 Ver y modificar los datos en Wikidata (23 años)", nacionalidad: "Noruega", ocupacion: "Cantautora, guitarrista, productora", seudo: "Girl in Red", genero: "Indie pop, Bedroom pop, Indie rock", instrumentos: "Voz, guitarra",  edad: "23 años", icon: "girlinred", canciones: cancion1))
        
        artistas.append(Artista(nombretitulo: "Clairo", nombre: "Claire Elizabeth Cottrill", nacimiento: "18 de agosto de 1998 (24 años)", nacionalidad: "Estadounidense", ocupacion: "Cantautora", seudo: "DJ Baby Benz", genero: "lo-fi, pop alternativo, pop barroco, indie pop, indie rock, folk y folk rock", instrumentos: "Voz, guitarra, teclado", edad: "24 años", icon: "clairo", canciones: cancion2))
        
        artistas.append(Artista(nombretitulo: "Bad Bunny", nombre: "Benito Antonio Martínez Ocasio", nacimiento: "10 de marzo de 1994 (28 años)", nacionalidad: "Puertorriqueño", ocupacion: "Rapero, cantante, productor discográfico, compositor de canciones y actor", seudo: "Bad Bunny", genero: "Trap, reguetón, hip hop, rap, dembow, dancehall", instrumentos: "zxx",  edad: "28 años", icon: "badbunny", canciones: cancion3))
        
        artistas.append(Artista(nombretitulo: "Danny Ocean", nombre: "Daniel Alejandro Morales Reyes", nacimiento: "5 de mayo de 1992 (30 años)", nacionalidad: "Venezonala", ocupacion: "Cantautor, productor, diseñador gráfico", seudo: "Danny Ocean", genero: "Pop latino, dancehall, moombahton, reggaeton", instrumentos: "Voz, guitarra, piano", edad: "30 años", icon: "dannyocean", canciones: cancion4))
        
        artistas.append(Artista(nombretitulo: "Dua Lipa", nombre: "Dua Lipa", nacimiento: "22 de agosto de 1995 (27 años)", nacionalidad: "Británica", ocupacion: "Cantautora, modelo, diseñadora, actriz", seudo: "Dua Lipa", genero: "Pop, electro pop, disco", instrumentos: "Voz", edad: "27 años", icon: "dualipa",canciones: cancion5))
        
        artistas.append(Artista(nombretitulo: "Billie Eilish", nombre: "Billie Eilish Pirate Baird O'Connell", nacimiento: "18 de diciembre de 2001 (20 años)", nacionalidad: "Estadounidense", ocupacion: "Cantautora", seudo: "Billie Eilish", genero: "Pop alternativo, electropop, indie pop, art pop", instrumentos: "Voz, ukelele, guitarra, piano", edad: "20 años", icon: "billieeilish",canciones: cancion6))
        
        artistas.append(Artista(nombretitulo: "Still Woozy", nombre: "Sven Eric Gamsky", nacimiento: "23 de junio de 1992 (30 años)", nacionalidad: "Estadounidense", ocupacion: "Cantautor", seudo: "Still Woozy", genero: "Indie pop, Bedroom pop", instrumentos: "Voz", edad: "30 años", icon: "stillwoozy", canciones: cancion7))
        
        artistas.append(Artista(nombretitulo: "Katy Perry", nombre: "Katheryn Elizabeth Hudson", nacimiento: "25 de octubre de 1984 (37 años)", nacionalidad: "Estadounidense", ocupacion: "Cantautora, empresaria, actriz", seudo: "Katy Perry", genero: "Pop, Pop-Rock, Disco, Electropop, Dance pop", instrumentos: "zxx", edad: "28 años", icon: "harrystyles", canciones: cancion8))
        
        artistas.append(Artista(nombretitulo: "Vance Joy", nombre: "James Gabriel Keogh", nacimiento: "1 de diciembre de 1987 (34 años)", nacionalidad: "Australiana", ocupacion: "Cantautor", seudo: "Vance Joy", genero: "ndie pop, indie folk", instrumentos: "Voz, guitarra, ukulele, piano", edad: "34 años", icon: "vancejoy", canciones: cancion9))
        
        artistas.append(Artista(nombretitulo: "Joji", nombre: "George Kusunoki Miller", nacimiento: "18 de septiembre de 1992 (30 años)", nacionalidad: "Australiana y japonesa", ocupacion: "Cantautor", seudo: "Joji", genero: "Trip hop, Música Lo-Fi, indie rock, rock alternativo y Pop Trash", instrumentos: "Voz", edad: "30 años", icon: "joji", canciones: cancion10))
        
        artistas.append(Artista(nombretitulo: "Lauren Jauregui", nombre: "Lauren Michelle Jauregui Morgado", nacimiento: "27 de junio de 1996 (26 años)", nacionalidad: "Estadounidense", ocupacion: "Cantautora", seudo: "Lauren Jauregui", genero: "Pop y R&B contemporáneo", instrumentos: "Voz", edad: "26 años", icon: "laurenjauregui", canciones: cancion11))
        
        artistas.append(Artista(nombretitulo: "Taylor Swift", nombre: "Taylor Alison Swift", nacimiento: "13 de diciembre de 1989 (32 años)", nacionalidad: "Estadounidense", ocupacion: "Cantautora, productora, actriz, directora, diseñadora, empresaria, modelo", seudo: "Nils Sjöberg", genero: "Pop, country, rock alterntivo, country pop, folk pop, electropop", instrumentos: "Guitarra, banjo, piano, voz, ukelele", edad: "32 años", icon: "taylorswift", canciones: cancion12))
        
        artistas.append(Artista(nombretitulo: "Halsey", nombre: "Ashley Nicolette Frangipane", nacimiento: "29 de septiembre de 1994 (28 años)", nacionalidad: "Estadounidense", ocupacion: "Compositora, cantante, activista, directora, actriz", seudo: "Halsey", genero: "Pop, indie pop, electropop, R&B, alternativa", instrumentos: "Voz, guitarra, guitarra eléctrica", edad: "28 años", icon: "halsey", canciones: cancion13))
        
        artistas.append(Artista(nombretitulo: "Miley Cyrus", nombre: "Miley Ray Cyrus", nacimiento: "23 de noviembre de 1992 (29 años)", nacionalidad: "Estadounidense", ocupacion: "Cantante, compositora, actriz y productora discográfica", seudo: "Miley Cyrus", genero: "Pop, rock,dance, pop rock y country", instrumentos: "Voz, guitarra, piano", edad: "29 años", icon: "mileycyrus", canciones: cancion14))
        
        artistas.append(Artista(nombretitulo: "Lana del Rey", nombre: "Elizabeth Woolridge Grant", nacimiento: "Elizabeth Woolridge Grant", nacionalidad: "Estadounidense", ocupacion: "Cantante, compositora, modelo", seudo: "Lana del Rey", genero: "Indie pop, pop barroco, trip hop, Sadcore, dream pop e indie rock", instrumentos: "Voz, guitarra, teclado, piano", edad: "37 años", icon: "lanadelrey",canciones: cancion15))
        
    }
    
    
}
