//
//  MasaPizza.swift
//  ProjectoPizza
//
//  Created by Maria on 14/07/2016.
//  Copyright © 2016 MariaWebIdeas. All rights reserved.
//

import UIKit

class MasaPizza: UIViewController {
    
    var masa:String = ""
    var tamaño:String = ""


    @IBOutlet weak var botonDelgada: UIButton!
    @IBOutlet weak var botonCrujiente: UIButton!
    @IBOutlet weak var botonGruesa: UIButton!
    
    @IBOutlet weak var botonSiguienteMasa: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        botonSiguienteMasa.enabled = false
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
    
    
    @IBAction func delgadaSelected(sender: AnyObject) {
        self.masa = "Delgada"
        botonSiguienteMasa.enabled = true
        botonDelgada.backgroundColor = UIColor.blueColor()
        botonCrujiente.backgroundColor = UIColor.clearColor()
        botonGruesa.backgroundColor = UIColor.clearColor()
    }
    
    @IBAction func crujienteSelected(sender: AnyObject) {
        self.masa = "Crujiente"
        botonSiguienteMasa.enabled = true
        botonCrujiente.backgroundColor = UIColor.blueColor()
        botonDelgada.backgroundColor = UIColor.clearColor()
        botonGruesa.backgroundColor = UIColor.clearColor()
    }
    
    @IBAction func gruesaSelected(sender: AnyObject) {
        self.masa = "Gruesa"
        botonSiguienteMasa.enabled = true
        botonGruesa.backgroundColor = UIColor.blueColor()
        botonDelgada.backgroundColor = UIColor.clearColor()
        botonCrujiente.backgroundColor = UIColor.clearColor()
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let nextView = segue.destinationViewController as! QuesoPizza
        nextView.tamaño = self.tamaño
        nextView.masa = self.masa
    }

}
