//
//  ViewController.swift
//  cm_07
//
//  Created by Germán Santos Jaimes on 18/09/24.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var Alumnos: [alumno] = [
        alumno(nombre: "chetos", imagen: "lobo"),
        alumno(nombre: "queso oaxaca", imagen: "lobo"),
        alumno(nombre: "bellako", imagen: "lobo")
    ]
    
    @IBOutlet weak var tabla: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tabla.dataSource = self
        tabla.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Alumnos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "celda", for: indexPath) as! CeldaTableViewCell
        
        let nombre = Alumnos[indexPath.row].nombre
        let imagen = Alumnos[indexPath.row].imagen
        
        cell.nombre.text = nombre
        cell.imagen?.image = UIImage(named: imagen)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "showDetail", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
            let MyindexPath = tabla.indexPathForSelectedRow
            let info = Alumnos[MyindexPath!.row]
            let vista2 = segue.destination as! Vista2ViewController
            vista2.recibe = info
            print("info vista 1", info)
    }
}

    




