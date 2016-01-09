//
//  Datos.swift
//  Hamburguesas
//
//  Created by Ryan Berrio on 1/8/16.
//  Copyright © 2016 Ryan Berrio. All rights reserved.
//

/*
Review Criteria
ok- 1. ¿El playground se encuentra en GitHub?
ok- 2. ¿El playground está hecho en Swift?
ok- 3. ¿Se incluye en el proyecto el archivo: Datos.swift?
ok- 4. ¿Dentro del archivo Datos.swift se define la clase: ColeccionDePaises con la funcionalidad definida?
ok- 5. ¿Dentro del archivo Datos.swift se define la clase: ColeccionDeHamburguesas con la funcionalidad definida?
ok- 6. ¿La interfaz gráfica define las dos etiquetas y el botón de: “Quiero una hamburguesa!!!”?
ok- 7. ¿Los elementos gráficos se encuentran centrados?
ok- 8. ¿La clase ViewController.swift define una instancia de cada una de las siguientes clases ColeccionDePaises,  ColeccionDeHamburguesas?
ok- 9. ¿La clase ViewController.swift cuenta con: Un @IBoutlet para la etiqueta de país. Un @IBoutlet para la etiqueta de hamburguesa. Un @IBAction para implementar cambiar de país y de hamburguesa?
ok- 10. ¿Al presionar el botón se cambian de manera aleatoria los valores de la etiqueta país y hamburguesa?
*/


import Foundation
import UIKit


class ColeccionDePaises{
    
    let paises : [String] = [
        "Colombia", "Mexico", "Venezuela",
        "Ecuador", "Peru", "Panama",
        "Chile", "Bolivia", "Paraguay",
        "Argentina", "Uruguay", "Brasil",
        "Guyana", "Belice", "Honduras",
        "Canada", "Costa Rica", "Salvador",
        "Nicaragua", "Guatemala", "Cuba", "USA"
    ]
    
    
    func obtenPais( ) -> String {
        let posicion = Int(arc4random()) % paises.count
        return paises[posicion]
    }
    
}

class ColeccionDeHamburguesa {
    
    let hamburguesas : [String] = [
        "Clasica", "Premium", "Especial",
        "Montañera", "New York", "Casera",
        "Todoterreno", "Cheese Burguer", "Hawaiana",
        "Criolla", "Mexicana", "Pollo",
        "Pavo", "Vegetariana", "Doble Carne",
        "Argentina", "Arabe", "Americana",
        "Avocado", "Italiana", "Blue Cheese", "Royale"
    ]
    
    func obtenHamburguesa( ) -> String {
        let posicion = Int(arc4random()) % hamburguesas.count
        return hamburguesas[posicion]
    }
}

struct Colores {
    
    let colores = [
        UIColor(red: 210/255.0, green: 90/255.0, blue: 45/255.0, alpha: 1),
        UIColor(red: 40/255.0, green: 170/255.0, blue: 45/255.0, alpha: 1),
        UIColor(red: 3/255.0, green: 180/255.0, blue: 90/255.0, alpha: 1),
        UIColor(red: 210/255.0, green: 190/255.0, blue: 5/255.0, alpha: 1),
        UIColor(red: 120/255.0, green: 120/255.0, blue: 50/255.0, alpha: 1),
        UIColor(red: 230/255.0, green: 80/255.0, blue: 90/255.0, alpha: 1),
        UIColor(red: 130/255.0, green: 130/255.0, blue: 130/255.0, alpha: 1),
        UIColor(red: 3/255.0, green: 50/255.0, blue: 90/255.0, alpha: 1)
    ]
    
    func regresarColorAleatorio() -> UIColor{
        let posicion = Int(arc4random()) % colores.count
        return colores[posicion]
    }
}
