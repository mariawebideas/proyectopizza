//
//  QuesoPizza.swift
//  ProjectoPizza
//
//  Created by Maria on 14/07/2016.
//  Copyright © 2016 MariaWebIdeas. All rights reserved.
//

import UIKit

class QuesoPizza: UIViewController {
    
    var queso:String = ""
    var tamaño:String = ""
    var masa:String = ""

    @IBOutlet weak var botonMozarela: UIButton!
    @IBOutlet weak var botonCheddar: UIButton!
    @IBOutlet weak var botonParmesano: UIButton!
    @IBOutlet weak var botonSinQueso: UIButton!
    

    @IBOutlet weak var botonSiguienteQueso: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        botonSiguienteQueso.enabled = false
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
    
    @IBAction func mozarelaSelected(sender: AnyObject) {
        self.queso = "Mozarela"
        botonSiguienteQueso.enabled = true
        botonMozarela.backgroundColor = UIColor.blueColor()
        botonCheddar.backgroundColor = UIColor.clearColor()
        botonParmesano.backgroundColor = UIColor.clearColor()
        botonSinQueso.backgroundColor = UIColor.clearColor()
    }
    
    @IBAction func cheddarSelected(sender: AnyObject) {
        self.queso = "Cheddar"
        botonSiguienteQueso.enabled = true
        botonCheddar.backgroundColor = UIColor.blueColor()
        botonMozarela.backgroundColor = UIColor.clearColor()
        botonParmesano.backgroundColor = UIColor.clearColor()
        botonSinQueso.backgroundColor = UIColor.clearColor()
    }
    
    @IBAction func parmesanoSelected(sender: AnyObject) {
        self.queso = "Parmesano"
        botonSiguienteQueso.enabled = true
        botonParmesano.backgroundColor = UIColor.blueColor()
        botonCheddar.backgroundColor = UIColor.clearColor()
        botonMozarela.backgroundColor = UIColor.clearColor()
        botonSinQueso.backgroundColor = UIColor.clearColor()
    }

    @IBAction func sinQuesoSelected(sender: AnyObject) {
        self.queso = "Sin Queso"
        botonSiguienteQueso.enabled = true
        botonSinQueso.backgroundColor = UIColor.blueColor()
        botonMozarela.backgroundColor = UIColor.clearColor()
        botonCheddar.backgroundColor = UIColor.clearColor()
        botonParmesano.backgroundColor = UIColor.clearColor()
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let nextView = segue.destinationViewController as! IngredientesPizza
        nextView.tamaño = self.tamaño
        nextView.masa = self.masa
        nextView.queso = self.queso
    }
    
}
