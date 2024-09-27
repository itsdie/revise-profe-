//
//  Vista2ViewController.swift
//  cm_07
//
//  Created by Germán Santos Jaimes on 18/09/24.
//


import UIKit

class Vista2ViewController: UIViewController{
    var recibe: alumno? = nil
    @IBOutlet weak var label:UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(recibe)
        print(recibe)
        label!.text = recibe!.nombre
    }
    
}


