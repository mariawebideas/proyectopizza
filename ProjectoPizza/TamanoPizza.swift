//
//  TamanoPizza.swift
//  ProjectoPizza
//
//  Created by Maria on 14/07/2016.
//  Copyright © 2016 MariaWebIdeas. All rights reserved.
//

import UIKit

class TamanoPizza: UIViewController {
    
    var tamaño:String = ""
    
    @IBOutlet weak var botonChica: UIButton!
    @IBOutlet weak var botonMediana: UIButton!
    @IBOutlet weak var botonGrande: UIButton!
    
    @IBOutlet weak var botonSiguiente: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        botonSiguiente.enabled = false
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func chicaSelected(sender: AnyObject) {
        self.tamaño = "Chica"
        botonSiguiente.enabled = true
        botonChica.backgroundColor = UIColor.blueColor()
        botonMediana.backgroundColor = UIColor.clearColor()
        botonGrande.backgroundColor = UIColor.clearColor()
    }

    @IBAction func medianaSelected(sender: AnyObject) {
        self.tamaño = "Mediana"
        botonSiguiente.enabled = true
        botonMediana.backgroundColor = UIColor.blueColor()
        botonChica.backgroundColor = UIColor.clearColor()
        botonGrande.backgroundColor = UIColor.clearColor()
    }
    
    @IBAction func grandeSelected(sender: AnyObject) {
        self.tamaño = "Grande"
        botonSiguiente.enabled = true
        botonGrande.backgroundColor = UIColor.blueColor()
        botonChica.backgroundColor = UIColor.clearColor()
        botonMediana.backgroundColor = UIColor.clearColor()
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let nextView = segue.destinationViewController as! MasaPizza
        nextView.tamaño = self.tamaño
    }
    
}
