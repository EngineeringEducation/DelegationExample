//
//  SecondViewController.swift
//  DelegationExample
//
//  Created by Wren on 2/18/15.
//  Copyright (c) 2015 Janardan Yri. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

  var initialViewController : ViewController!

  @IBOutlet weak var messageTextField: UITextField!

  @IBAction func returnNewMessageToInitialViewController() {
    initialViewController.messageTexts.append(self.messageTextField.text)
    initialViewController.updateMessageTextUI()
    self.dismissViewControllerAnimated(true, completion: nil)
  }
}
