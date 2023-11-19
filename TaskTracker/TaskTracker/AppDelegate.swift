//
//  AppDelegate.swift
//  TaskTracker
//
//  Created by Matthew Eisenberg on 11/5/23.
//  Added to by Marco Rojas on 11/18/23
//

import UIKit
//import parseswift
import ParseSwift

@main
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.

        // TODO: Pt 1 - Initialize Parse SDK
        // https://github.com/parse-community/Parse-Swift/blob/main/ParseSwift.playground/Sources/Common.swiftOUR
        ParseSwift.initialize(applicationId: "29RZ5pKBr4de8s9tz8P1ZGfzRrZoeU9trxVGqjZC",
                              clientKey: "6bwnPkLYGgWnRCKcJV8OBSQrSDf9RLGRt7fMSJvS",
                              serverURL: URL(string: "https://parseapi.back4app.com")!)

        // TODO: Pt 1: - Instantiate and save a test parse object to your server
        // https://github.com/parse-community/Parse-Swift/blob/3d4bb13acd7496a49b259e541928ad493219d363/ParseSwift.playground/Pages/1%20-%20Your%20first%20Object.xcplaygroundpage/Contents.swift#L121
        // Instantiate the test parse object
        //var score = GameScore()
        //score.playerName = "Kingsley"
        //score.points = 13

        // Save to your server asynchronously (preferred way) - Performs work on background queue and returns to specified callbackQueue.
        // If no callbackQueue is specified it returns to main queue.
        //score.save { result in
          //  switch result {
            //case .success(let savedScore):
              //  print("✅ Parse Object SAVED!: Player: \(String(describing: savedScore.playerName)), Score: \(String(describing: savedScore.points))")
         //   case .failure(let error):
           //     assertionFailure("Error saving: \(error)")
           // }
       // }

        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

