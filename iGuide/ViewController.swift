//
//  ViewController.swift
//  iGuide
//
//  Created by Lamia Al salloom on 9/17/18.
//  Copyright © 2018 Lamia Al salloom. All rights reserved.
//

import UIKit
import GoogleSignIn
import Firebase

class ViewController: UIViewController{

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    
    
    
   override func didReceiveMemoryWarning() {
      super.didReceiveMemoryWarning()
        //Dispose of any resources that can be recreated.
  }
    
   override func viewDidAppear(_ animated: Bool) {
  self.performSegue(withIdentifier: "loginView", sender: self)
   }

}

