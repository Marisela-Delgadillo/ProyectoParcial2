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
        celda.imgIcon.layer.cornerRadius = 15
        celda.imgIcon.clipsToBounds = true
        
        return celda
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destino = segue.destination as! DetallesArtista
        destino.artista = artistas[tvArtista.indexPathForSelectedRow!.row]
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //aqui ya son los 5 de prueba
        cancion1.append(Cancion(cancion: "We fell in love in october", portada: "girlinred-album2"))
        cancion1.append(Cancion(cancion: "I wanna be your girlfriend", portada: "girlinred-album"))
        cancion1.append(Cancion(cancion: "Midnight love", portada: "girlinred-album3"))
        cancion1.append(Cancion(cancion: "Summer depression", portada: "girlinred-album2"))
        cancion1.append(Cancion(cancion: "Rue", portada: "girlinred-album3"))
        
        cancion2.append(Cancion(cancion: "Bags", portada: "clairo-album"))
        cancion2.append(Cancion(cancion: "Sofia", portada: "clairo-album2"))
        cancion2.append(Cancion(cancion: "Pretty Girl", portada: "clairo-album2"))
        cancion2.append(Cancion(cancion: "Flammin Hot Cheetos", portada: "clairo-album3"))
        cancion2.append(Cancion(cancion: "Bubble Gum", portada: "clairo-album1"))
        
        cancion3.append(Cancion(cancion: "A tu merced", portada: "badbunny-album2"))
        cancion3.append(Cancion(cancion: "Una vez", portada: "badbunny-album"))
        cancion3.append(Cancion(cancion: "Te mudaste", portada: "badbunny-album"))
        cancion3.append(Cancion(cancion: "Ojitos lindos", portada: "badbunny-album3"))
        cancion3.append(Cancion(cancion: "Moscow Mule", portada: "badbunny-album2"))
        
        cancion4.append(Cancion(cancion: "Kizombita para ti", portada: "dannyocean-album2"))
        cancion4.append(Cancion(cancion: "Me rehuso", portada: "dannyocean-album3"))
        cancion4.append(Cancion(cancion: "Vuelve", portada: "dannyocean-album3"))
        cancion4.append(Cancion(cancion: "Epa wei", portada: "dannyocean-album"))
        cancion4.append(Cancion(cancion: "Veneno", portada: "dannyocean-album2"))
        
        cancion5.append(Cancion(cancion: "Levitating", portada: "dualipa-album2"))
        cancion5.append(Cancion(cancion: "One Kiss", portada: "dualipa-album"))
        cancion5.append(Cancion(cancion: "New Rules", portada: "dualipa-album"))
        cancion5.append(Cancion(cancion: "New Love", portada: "dualipa-album3"))
        cancion5.append(Cancion(cancion: "Cold Heart", portada: "dualipa-album"))
        
        cancion6.append(Cancion(cancion: "Bad guy", portada: "billieeilish-album2"))
        cancion6.append(Cancion(cancion: "Watch", portada: "billieeilish-album"))
        cancion6.append(Cancion(cancion: "Lovely", portada: "billieeilish-album3"))
        cancion6.append(Cancion(cancion: "Everything i wanted", portada: "billieeilish-album3"))
        cancion6.append(Cancion(cancion: "wish you were gay", portada: "billieeilish-album"))
        
        cancion7.append(Cancion(cancion: "Goodie bag", portada: "stillwoozy-album"))
        cancion7.append(Cancion(cancion: "Cooks", portada: "stillwoozy-album3"))
        cancion7.append(Cancion(cancion: "Lucy", portada: "stillwoozy-album"))
        cancion7.append(Cancion(cancion: "Habit", portada: "stillwoozy-album2"))
        cancion7.append(Cancion(cancion: "Lava", portada: "stillwoozy-album2"))
        
        cancion8.append(Cancion(cancion: "Firework", portada: "katyperry-album3"))
        cancion8.append(Cancion(cancion: "Teenage dream", portada: "katyperry-album"))
        cancion8.append(Cancion(cancion: "Part of me", portada: "katyperry-album2"))
        cancion8.append(Cancion(cancion: "Last Friday Night", portada: "katyperry-album"))
        cancion8.append(Cancion(cancion: "The one that got away", portada: "katyperry-album2"))
        
        cancion9.append(Cancion(cancion: "Riptide", portada: "vancejoy-album3"))
        cancion9.append(Cancion(cancion: "Saturday Sun", portada: "vancejoy-album"))
        cancion9.append(Cancion(cancion: "Missing piece", portada: "vancejoy-album"))
        cancion9.append(Cancion(cancion: "Clarity", portada: "vancejoy-album2"))
        cancion9.append(Cancion(cancion: "You", portada: "vancejoy-album2"))
        
        cancion10.append(Cancion(cancion: "Daylight", portada: "joji-album2"))
        cancion10.append(Cancion(cancion: "Sanctuary", portada: "joji-album2"))
        cancion10.append(Cancion(cancion: "Tick Tock", portada: "joji-album"))
        cancion10.append(Cancion(cancion: "777", portada: "joji-album3"))
        cancion10.append(Cancion(cancion: "Pretty Boy", portada: "joji-album2"))
        
        cancion11.append(Cancion(cancion: "Expectations", portada: "laurenjauregui-album3"))
        cancion11.append(Cancion(cancion: "Lento", portada: "laurenjauregui-album3"))
        cancion11.append(Cancion(cancion: "More than that", portada: "laurenjauregui-album"))
        cancion11.append(Cancion(cancion: "50ft.", portada: "laurenjauregui-album"))
        cancion11.append(Cancion(cancion: "Piña", portada: "laurenjauregui-album2"))
        
        cancion12.append(Cancion(cancion: "Don't blame me", portada: "talorswift-album2"))
        cancion12.append(Cancion(cancion: "August", portada: "talorswift-album2"))
        cancion12.append(Cancion(cancion: "Blank Space", portada: "talorswift-album3"))
        cancion12.append(Cancion(cancion: "Lover", portada: "talorswift-album"))
        cancion12.append(Cancion(cancion: "Shake it off", portada: "talorswift-album3"))
        
        cancion13.append(Cancion(cancion: "Closer", portada: "halsey-album2"))
        cancion13.append(Cancion(cancion: "Without me", portada: "halsey-album3"))
        cancion13.append(Cancion(cancion: "Strangers", portada: "halsey-album"))
        cancion13.append(Cancion(cancion: "Gasoline", portada: "halsey-album2"))
        cancion13.append(Cancion(cancion: "Closer", portada: "halsey-album"))
        
        cancion14.append(Cancion(cancion: "Party in the USA", portada: "mileycyrus-album"))
        cancion14.append(Cancion(cancion: "Prisioner", portada: "mileycyrus-album3"))
        cancion14.append(Cancion(cancion: "We can't stop", portada: "mileycyrus-album"))
        cancion14.append(Cancion(cancion: "The Climb", portada: "mileycyrus-album2"))
        cancion14.append(Cancion(cancion: "Angels like you", portada: "mileycyrus-album2"))
        
        cancion15.append(Cancion(cancion: "Summer sadness", portada: "lanadelrey-album"))
        cancion15.append(Cancion(cancion: "Young and beautiful", portada: "lanadelrey-album2"))
        cancion15.append(Cancion(cancion: "Doin' time", portada: "lanadelrey-album"))
        cancion15.append(Cancion(cancion: "Brooklyn baby", portada: "lanadelrey-album3"))
        cancion15.append(Cancion(cancion: "West coast", portada: "lanadelrey-album3"))
        
        
        
        artistas.append(Artista(nombretitulo: "Girl in Red", nombre: "Marie Ulven Ringheim", nacimiento: "16 de febrero de 1999 (23 años)", nacionalidad: "Noruega", ocupacion: "Cantautora, guitarrista, productora", seudo: "Girl in Red", genero: "Indie pop, Bedroom pop, Indie rock", instrumentos: "Voz, guitarra",  edad: "23 años", icon: "girlinred", foto: "girlinred", canciones: cancion1))
        
        artistas.append(Artista(nombretitulo: "Clairo", nombre: "Claire Elizabeth Cottrill", nacimiento: "18 de agosto de 1998 (24 años)", nacionalidad: "Estadounidense", ocupacion: "Cantautora", seudo: "DJ Baby Benz", genero: "lo-fi, pop alternativo, indie pop", instrumentos: "Voz, guitarra, teclado", edad: "24 años", icon: "clairo", foto: "clairo", canciones: cancion2))
        
        artistas.append(Artista(nombretitulo: "Bad Bunny", nombre: "Benito Antonio Martínez Ocasio", nacimiento: "10 de marzo de 1994 (28 años)", nacionalidad: "Puertorriqueño", ocupacion: "Cantautor, productor, actor", seudo: "Bad Bunny", genero: "Trap, reguetón, hip hop", instrumentos: "zxx",  edad: "28 años", icon: "badbunny", foto: "badbunny", canciones: cancion3))
        
        artistas.append(Artista(nombretitulo: "Danny Ocean", nombre: "Daniel Alejandro Morales Reyes", nacimiento: "5 de mayo de 1992 (30 años)", nacionalidad: "Venezonala", ocupacion: "Cantautor, productor, diseñador", seudo: "Danny Ocean", genero: "Pop latino, reggaeton", instrumentos: "Voz, guitarra, piano", edad: "30 años", icon: "dannyocean", foto: "dannyocean", canciones: cancion4))
        
        artistas.append(Artista(nombretitulo: "Dua Lipa", nombre: "Dua Lipa", nacimiento: "22 de agosto de 1995 (27 años)", nacionalidad: "Británica", ocupacion: "Cantautora, modelo, diseñadora", seudo: "Dua Lipa", genero: "Pop, electro pop, disco", instrumentos: "Voz", edad: "27 años", icon: "dualipa", foto: "dualipa",canciones: cancion5))
        
        artistas.append(Artista(nombretitulo: "Billie Eilish", nombre: "Billie Eilish Pirate Baird O'Connell", nacimiento: "18 de diciembre de 2001 (20 años)", nacionalidad: "Estadounidense", ocupacion: "Cantautora", seudo: "Billie Eilish", genero: "Pop, electropop, indie pop", instrumentos: "Voz, ukelele, guitarra", edad: "20 años", icon: "billieeilish", foto: "billieeilish",canciones: cancion6))
        
        artistas.append(Artista(nombretitulo: "Still Woozy", nombre: "Sven Eric Gamsky", nacimiento: "23 de junio de 1992 (30 años)", nacionalidad: "Estadounidense", ocupacion: "Cantautor", seudo: "Still Woozy", genero: "Indie pop, Bedroom pop", instrumentos: "Voz", edad: "30 años", icon: "stillwoozy", foto: "stillwoozy", canciones: cancion7))
        
        artistas.append(Artista(nombretitulo: "Katy Perry", nombre: "Katheryn Elizabeth Hudson", nacimiento: "25 de octubre de 1984 (37 años)", nacionalidad: "Estadounidense", ocupacion: "Cantautora, empresaria, actriz", seudo: "Katy Perry", genero: "Pop, Disco, Electropop", instrumentos: "Voz y guitarra", edad: "28 años", icon: "katyperry", foto: "katyperry", canciones: cancion8))
        
        artistas.append(Artista(nombretitulo: "Vance Joy", nombre: "James Gabriel Keogh", nacimiento: "1 de diciembre de 1987 (34 años)", nacionalidad: "Australiana", ocupacion: "Cantautor", seudo: "Vance Joy", genero: "ndie pop, indie folk", instrumentos: "Voz, guitarra, ukulele", edad: "34 años", icon: "vancejoy", foto: "vancejoy", canciones: cancion9))
        
        artistas.append(Artista(nombretitulo: "Joji", nombre: "George Kusunoki Miller", nacimiento: "18 de septiembre de 1992 (30 años)", nacionalidad: "Australiana y japonesa", ocupacion: "Cantautor", seudo: "Joji", genero: "Trip hop, Lo-Fi, indie", instrumentos: "Voz", edad: "30 años", icon: "joji", foto: "joji", canciones: cancion10))
        
        artistas.append(Artista(nombretitulo: "Lauren Jauregui", nombre: "Lauren Michelle Jauregui Morgado", nacimiento: "27 de junio de 1996 (26 años)", nacionalidad: "Estadounidense", ocupacion: "Cantautora", seudo: "Lauren Jauregui", genero: "Pop, R&B contemporáneo", instrumentos: "Voz", edad: "26 años", icon: "laurenjauregui", foto: "laurenjauregui", canciones: cancion11))
        
        artistas.append(Artista(nombretitulo: "Taylor Swift", nombre: "Taylor Alison Swift", nacimiento: "13 de diciembre de 1989 (32 años)", nacionalidad: "Estadounidense", ocupacion: "Cantautora, directora, empresaria", seudo: "Nils Sjöberg", genero: "Pop, country, folk pop", instrumentos: "Guitarra, piano, voz", edad: "32 años", icon: "taylorswift", foto: "taylorswift", canciones: cancion12))
        
        artistas.append(Artista(nombretitulo: "Halsey", nombre: "Ashley Nicolette Frangipane", nacimiento: "29 de septiembre de 1994 (28 años)", nacionalidad: "Estadounidense", ocupacion: "Cantautora, activista, actriz", seudo: "Halsey", genero: "Pop, indie pop, R&B", instrumentos: "Voz, guitarra eléctrica", edad: "28 años", icon: "halsey", foto: "halsey", canciones: cancion13))
        
        artistas.append(Artista(nombretitulo: "Miley Cyrus", nombre: "Miley Ray Cyrus", nacimiento: "23 de noviembre de 1992 (29 años)", nacionalidad: "Estadounidense", ocupacion: "Cantautora, actriz, productora", seudo: "Miley Cyrus", genero: "Pop, rock, dance", instrumentos: "Voz, guitarra, piano", edad: "29 años", icon: "mileycyrus", foto: "mileycyrus", canciones: cancion14))
        
        artistas.append(Artista(nombretitulo: "Lana del Rey", nombre: "Elizabeth Woolridge Grant", nacimiento: "21 de junio de 1985 (37 años)", nacionalidad: "Estadounidense", ocupacion: "Cantante, compositora, modelo", seudo: "Lana del Rey", genero: "Indie pop, barroco, trip hop", instrumentos: "Voz, guitarra, piano", edad: "37 años", icon: "lanadelrey", foto: "lanadelrey",canciones: cancion15))
        
    }
    
    
}
