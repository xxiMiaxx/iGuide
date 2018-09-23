//
//  SignInViewController.swift
//  iGuide
//
//  Created by Lamia Al salloom on 9/23/18.
//  Copyright © 2018 Lamia Al salloom. All rights reserved.
//

import UIKit
import GoogleSignIn
import Firebase


class SignInViewController: UIViewController, GIDSignInUIDelegate  {

    override func viewDidLoad() {
        super.viewDidLoad()

        configureGoogleSignInButton()
        // Do any additional setup after loading the view.
    }
    
    //creating the Google sign in button
    fileprivate func configureGoogleSignInButton() {
        let googleSignInButton = GIDSignInButton()
        googleSignInButton.frame = CGRect(x: 120, y: 200, width: view.frame.width - 240, height: 50)
        view.addSubview(googleSignInButton)
        GIDSignIn.sharedInstance().uiDelegate = self
    }
}

   // override func didReceiveMemoryWarning() {
     //   super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
   // }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

//}
