//
//  ViewController.swift
//  Hamburguesas
//
//  Created by Ryan Berrio on 1/8/16.
//  Copyright © 2016 Ryan Berrio. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nombrePais: UILabel!
    @IBOutlet weak var nombreHamburguesa: UILabel!
    
    let paises = ColeccionDePaises()
    let hamburguesas = ColeccionDeHamburguesa()
    let colores = Colores()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buscarPaisHamburguesa() {
        nombrePais.text = paises.obtenPais()
        nombreHamburguesa.text = hamburguesas.obtenHamburguesa()
        
        let colorAleatorio = colores.regresarColorAleatorio()
        view.backgroundColor = colorAleatorio
        view.tintColor = colorAleatorio
    }

}

