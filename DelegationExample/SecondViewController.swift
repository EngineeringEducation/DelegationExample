//
//  SecondViewController.swift
//  DelegationExample
//
//  Created by Wren on 2/18/15.
//  Copyright (c) 2015 Janardan Yri. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

  var delegate : SecondViewControllerDelegate?

  @IBOutlet weak var messageTextField: UITextField!

  @IBAction func returnNewMessageToInitialViewController() {

    self.delegate?.secondViewControllerDidCreateMessageText(self.messageTextField.text)
    self.dismissViewControllerAnimated(true, completion: nil)
  }
}

protocol SecondViewControllerDelegate : NSObjectProtocol  {

func secondViewControllerDidCreateMessageText(messageText : String)

}