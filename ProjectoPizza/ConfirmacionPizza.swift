//
//  ConfirmacionPizza.swift
//  ProjectoPizza
//
//  Created by Maria on 14/07/2016.
//  Copyright © 2016 MariaWebIdeas. All rights reserved.
//

import UIKit

class ConfirmacionPizza: UIViewController {
    
    var tamaño:String = ""
    var masa:String = ""
    var queso:String = ""
    var ingredientes:[String:String] = [:]

    @IBOutlet weak var tamañoLabel: UILabel!
    @IBOutlet weak var masaLabel: UILabel!
    @IBOutlet weak var quesoLabel: UILabel!
    @IBOutlet weak var ingredientesLabel: UILabel!
    
    override func viewWillAppear(animated: Bool) {
        self.tamañoLabel.text = self.tamaño
        self.masaLabel.text = self.masa
        self.quesoLabel.text = self.queso
        
        //self.ingredientesLabel.text = ingredientes.description
        var ingredientesSelected:String = ""
        for ingrediente in ingredientes.values
        {
            ingredientesSelected += " \(ingrediente) "
        }
        self.ingredientesLabel.text = ingredientesSelected
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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

}
