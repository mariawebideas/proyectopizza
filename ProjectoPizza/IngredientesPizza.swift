//
//  IngredientesPizza.swift
//  ProjectoPizza
//
//  Created by Maria on 14/07/2016.
//  Copyright © 2016 MariaWebIdeas. All rights reserved.
//

import UIKit

class IngredientesPizza: UIViewController {
    
    var ingredientes:[String:String] = [:]
    var numeroDeIngredientes:Int = 0
    var masa:String = ""
    var tamaño:String = ""
    var queso:String = ""
    
    @IBOutlet weak var botonJamon: UIButton!
    @IBOutlet weak var botonPepperoni: UIButton!
    @IBOutlet weak var botonPavo: UIButton!
    @IBOutlet weak var botonSalchicha: UIButton!
    @IBOutlet weak var botonAceituna: UIButton!
    @IBOutlet weak var botonCebolla: UIButton!
    @IBOutlet weak var botonPimiento: UIButton!
    @IBOutlet weak var botonAnchoa: UIButton!
    @IBOutlet weak var botonPiña: UIButton!
    
    @IBOutlet weak var botonSiguienteIngredientes: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
         botonSiguienteIngredientes.enabled = false
        
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
    
    func aumentaNumeroDeIngredients() {
        numeroDeIngredientes++
        botonSiguienteEnabled()
    }
    
    func reduceNumeroDeIngredientes() {
        numeroDeIngredientes--
        botonSiguienteEnabled()
    }
    
    func botonSiguienteEnabled() {
        if numeroDeIngredientes == 0 {
            botonSiguienteIngredientes.enabled = false
        } else {
            botonSiguienteIngredientes.enabled = true
        }
    }
    
    var jamonFirstTimePressed:Bool = false
    @IBAction func jamonSelected(sender: AnyObject) {
        if (jamonFirstTimePressed == false){
            jamonFirstTimePressed = true
            self.ingredientes["ja"] = "Jamón"
            botonJamon.backgroundColor = UIColor.blueColor()
            aumentaNumeroDeIngredients()
        }   else {
            jamonFirstTimePressed = false
            self.ingredientes["ja"] = nil
            botonJamon.backgroundColor = UIColor.clearColor()
            reduceNumeroDeIngredientes()
        }
    }
    
    var pepperoniFirstTimePressed:Bool = false
    @IBAction func pepperoniSelected(sender: AnyObject) {
        if (pepperoniFirstTimePressed == false){
            pepperoniFirstTimePressed = true
            self.ingredientes["pe"] = "Pepperoni"
            botonPepperoni.backgroundColor = UIColor.blueColor()
            aumentaNumeroDeIngredients()
        }   else {
            pepperoniFirstTimePressed = false
            self.ingredientes["pe"] = nil
            botonPepperoni.backgroundColor = UIColor.clearColor()
            reduceNumeroDeIngredientes()
        }
    }
    
    var pavoFirstTimePressed:Bool = false
    @IBAction func pavoSelected(sender: AnyObject) {
        if (pavoFirstTimePressed == false){
            pavoFirstTimePressed = true
            self.ingredientes["pa"] = "Pavo"
            botonPavo.backgroundColor = UIColor.blueColor()
            aumentaNumeroDeIngredients()
        }   else {
            pavoFirstTimePressed = false
            self.ingredientes["pa"] = nil
            botonPavo.backgroundColor = UIColor.clearColor()
            reduceNumeroDeIngredientes()
        }
    }
    
    var salchichaFirstTimePressed:Bool = false
    @IBAction func salchichaSelected(sender: AnyObject) {
        if (salchichaFirstTimePressed == false){
            salchichaFirstTimePressed = true
            self.ingredientes["sa"] = "Salchicha"
            botonSalchicha.backgroundColor = UIColor.blueColor()
            aumentaNumeroDeIngredients()
        }   else {
            salchichaFirstTimePressed = false
            self.ingredientes["sa"] = nil
            botonSalchicha.backgroundColor = UIColor.clearColor()
            reduceNumeroDeIngredientes()
        }
    }
 
    var aceitunaFirstTimePressed:Bool = false
    @IBAction func aceitunaSelected(sender: AnyObject) {
        if (aceitunaFirstTimePressed == false){
            aceitunaFirstTimePressed = true
            self.ingredientes["ac"] = "Aceituna"
            botonAceituna.backgroundColor = UIColor.blueColor()
            aumentaNumeroDeIngredients()
        }   else {
            aceitunaFirstTimePressed = false
            self.ingredientes["ac"] = nil
            botonAceituna.backgroundColor = UIColor.clearColor()
            reduceNumeroDeIngredientes()
        }
    }
    
    var cebollaFirstTimePressed:Bool = false
    @IBAction func cebollaSelected(sender: AnyObject) {
        if (cebollaFirstTimePressed == false){
            cebollaFirstTimePressed = true
            self.ingredientes["ce"] = "Cebolla"
            botonCebolla.backgroundColor = UIColor.blueColor()
            aumentaNumeroDeIngredients()
        }   else {
            cebollaFirstTimePressed = false
            self.ingredientes["ce"] = nil
            botonCebolla.backgroundColor = UIColor.clearColor()
            reduceNumeroDeIngredientes()
        }
    }
    
    var pimientoFirstTimePressed:Bool = false
    @IBAction func pimientoSelected(sender: AnyObject) {
        if (pimientoFirstTimePressed == false){
            pimientoFirstTimePressed = true
            self.ingredientes["pi"] = "Pimiento"
            botonPimiento.backgroundColor = UIColor.blueColor()
            aumentaNumeroDeIngredients()
        }   else {
            pimientoFirstTimePressed = false
            self.ingredientes["pi"] = nil
            botonPimiento.backgroundColor = UIColor.clearColor()
            reduceNumeroDeIngredientes()
        }
    }
    
    var piñaFirstTimePressed:Bool = false
    @IBAction func piñaSelected(sender: AnyObject) {
        if (piñaFirstTimePressed == false){
            piñaFirstTimePressed = true
            self.ingredientes["pin"] = "Piña"
            botonPiña.backgroundColor = UIColor.blueColor()
            aumentaNumeroDeIngredients()
        }   else {
            piñaFirstTimePressed = false
            self.ingredientes["pin"] = nil
            botonPiña.backgroundColor = UIColor.clearColor()
            reduceNumeroDeIngredientes()
        }
    }
    
    var anchoaFirstTimePressed:Bool = false
    @IBAction func anchoaSelected(sender: AnyObject) {
        if (anchoaFirstTimePressed == false){
            anchoaFirstTimePressed = true
            self.ingredientes["an"] = "Anchoa"
            botonAnchoa.backgroundColor = UIColor.blueColor()
            aumentaNumeroDeIngredients()
        }   else {
            anchoaFirstTimePressed = false
            self.ingredientes["an"] = nil
            botonAnchoa.backgroundColor = UIColor.clearColor()
            reduceNumeroDeIngredientes()
        }
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let nextView = segue.destinationViewController as! ConfirmacionPizza
        nextView.tamaño = self.tamaño
        nextView.masa = self.masa
        nextView.queso = self.queso
        nextView.ingredientes = self.ingredientes
    }

}
