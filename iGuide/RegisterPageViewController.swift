//
//  RegisterPageViewController.swift
//  iGuide
//
//  Created by Lamia Al salloom on 9/22/18.
//  Copyright © 2018 Lamia Al salloom. All rights reserved.
//

import UIKit

import Firebase
import GoogleSignIn

class RegisterPageViewController: UIViewController {

    @IBOutlet weak var userEmailTextFeild: UITextField!
    @IBOutlet weak var userPasswordTextFeild: UITextField!
    @IBOutlet weak var RepeatPasswordTextFeild: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func registerButtonTapped(_ sender: Any) {
        
        let userEmail = userEmailTextFeild.text;
        let userPassword = userPasswordTextFeild.text;
        let userRepeatPassword = RepeatPasswordTextFeild.text;
   
    //check empty feilds
        if((userEmail?.isEmpty)! || (userPassword?.isEmpty)! || (userRepeatPassword?.isEmpty)! ){
            
            // display alert
            displayMyAlertMessage(userMessage: "All fields are required");
            return;
            
        }
        //check if passwords match
        if( userPassword != userRepeatPassword){
            
            //display alert msg
            displayMyAlertMessage(userMessage: "Passwords do not match");
            
            return;
        }
        
        //store data
        
        // display alert msg with conformation
    
    
    }
    
    func displayMyAlertMessage(userMessage:String){
    
        var myAlert = UIAlertController(title:"Alert", message:userMessage, preferredStyle:UIAlertControllerStyle.alert);
    
        let okAction = UIAlertAction(title:"Ok", style:UIAlertActionStyle.default, handler:nil);
    
        myAlert.addAction(okAction);
        
        self.present(myAlert, animated:true, completion:nil);
    
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
