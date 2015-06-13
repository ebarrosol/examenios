//
//  SecondViewController.swift
//  BlockNotas
//
//  Created by Efren Alejandro Barroso Llanes on 13/06/15.
//  Copyright (c) 2015 EBL. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate
{

    @IBOutlet var nombrenota : UITextField!
    @IBOutlet var descripnota : UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func textFieldShouldReturn(_textField: UITextField) -> Bool
    {
        _textField.resignFirstResponder()
        return true
    }
    
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent)
    {
        self.view.endEditing(true)
    }
    
    @IBAction func agregarNota(sender: UIButton)
    {
        adminnot.agregarNotas(nombrenota.text, _descrip: descripnota.text)
        self.view.endEditing(true)
        nombrenota.text = ""
        descripnota.text = ""
        self.tabBarController?.selectedIndex = 0
        
    }
    

}

