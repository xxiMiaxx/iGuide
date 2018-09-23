//
//  AppDelegate.swift
//  iGuide
//
//  Created by Lamia Al salloom on 9/17/18.
//  Copyright © 2018 Lamia Al salloom. All rights reserved.
//

import UIKit
import Firebase
//import FirebaseAuth
import GoogleSignIn

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate, GIDSignInDelegate {

    var window: UIWindow?

//let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        FirebaseApp.configure()
        
        GIDSignIn.sharedInstance().clientID = FirebaseApp.app()?.options.clientID
        GIDSignIn.sharedInstance().delegate = self
        
        return true
    }
   //======================
    
    func application(_ app: UIApplication, open url: URL, options: [UIApplicationOpenURLOptionsKey : Any] = [:]) -> Bool {
        let googleAuthentication = GIDSignIn.sharedInstance().handle(url, sourceApplication:options[UIApplicationOpenURLOptionsKey.sourceApplication] as? String, annotation: [:])
        
        
        return googleAuthentication
    }
    
    // Google Sign In
    func sign(_ signIn: GIDSignIn!, didSignInFor user: GIDGoogleUser!, withError error: Error!) {
        if (error) != nil {
            print("An error occured during Google Authentication")
            return
        }
        
        guard let authentication = user.authentication else { return }
        let credential = GoogleAuthProvider.credential(withIDToken: authentication.idToken,
                                                       accessToken: authentication.accessToken)
        Auth.auth().signIn(with: credential) { (user, error) in
            if (error) != nil {
                print("Google Authentification Fail")
            } else {
                print("Google Authentification Success")
                
                let mainStoryBoard: UIStoryboard = UIStoryboard(name:"Main", bundle:nil)
                let protectedPage = mainStoryBoard.instantiateViewController(withIdentifier: "ProtectedPageViewController") as! ProtectedPageViewController
                let appDelegate = UIApplication.shared.delegate
                appDelegate?.window??.rootViewController = protectedPage
            }
        }
    }
}



