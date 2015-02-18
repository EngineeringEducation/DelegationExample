//
//  ViewController.swift
//  DelegationExample
//
//  Created by Wren on 2/18/15.
//  Copyright (c) 2015 Janardan Yri. All rights reserved.
//

import UIKit

class ViewController: UIViewController, SecondViewControllerDelegate {

  var messageTexts = ["Hello", "What's Up", "Oh Hey"]

  @IBOutlet weak var messageTextsTextView: UITextView!

  override func viewDidLoad() {
    super.viewDidLoad()

    self.updateMessageTextUI()
  }

  override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    let secondVC = segue.destinationViewController as SecondViewController
    secondVC.delegate = self
  }

  func updateMessageTextUI() {
    self.messageTextsTextView.text = self.messageTexts.reduce("", combine: { (first, second) -> String in
      return "\(first)\n\(second)"
    })
  }

  func secondViewControllerDidCreateMessageText(messageText: String) {
    self.messageTexts.append(messageText)
    self.updateMessageTextUI()
  }

}

