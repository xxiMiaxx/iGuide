//
//  ProtectedPageViewController.swift
//  iGuide
//
//  Created by Lamia Al salloom on 9/23/18.
//  Copyright © 2018 Lamia Al salloom. All rights reserved.
//

import UIKit
import Firebase
import GoogleSignIn

class ProtectedPageViewController: UIViewController, GIDSignInUIDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func signOut(_ sender: Any) {
        
        do {
            try Auth.auth().signOut()
            
            let signInPage = self.storyboard?.instantiateViewController(withIdentifier: "ViewController") as! ViewController
            let appDelegate = UIApplication.shared.delegate
            appDelegate?.window??.rootViewController = signInPage
            
        } catch let signOutError as NSError {
            print ("Error signing out: %@", signOutError)
        }
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
