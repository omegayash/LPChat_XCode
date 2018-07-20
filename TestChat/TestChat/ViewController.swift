//
//  ViewController.swift
//  TestChat
//
//  Created by Datamatics Global Services Limited on 13/07/18.
//  Copyright © 2018 Datamatics Global Services Limited. All rights reserved.
//

import UIKit
import LPMessagingSDK
import LPInfra
import Foundation
@objc class ViewController: UIViewController {

   @objc override func viewDidLoad() {
        super.viewDidLoad()
        
       
        do {
            try LPMessagingSDK.instance.initialize("33136087")
        } catch {
            return
        }
        let a=LPMessagingSDK.instance
        let conversationQuery = LPMessagingSDK.instance.getConversationBrandQuery("33136087")
        let conversationViewParams = LPConversationViewParams(conversationQuery: conversationQuery, isViewOnly: false)
        LPMessagingSDK.instance.showConversation(conversationViewParams, authenticationParams: nil)
        // Do any additional setup after loading the view, typically from a nib.
         
        
    }

   @objc override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

