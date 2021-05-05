//
//  ViewController.swift
//  Emojional
//
//  Created by Fiona Oh on 5/5/21.
//

import UIKit

class ViewController: UIViewController {
    
    let emojis = ["🥲": "single tear", "😖": "embarrassed", "😴": "sleepy", "🥰": "love"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func showMessage(sender: UIButton) {
        //print out a message!
        
        let selectedEmotion = sender.titleLabel?.text
        
        let alertController = UIAlertController(title: "Emoji", message: emojis[selectedEmotion!]!, preferredStyle: UIAlertController.Style.alert)
        
        alertController.addAction(UIAlertAction(title: "Thank you!", style: UIAlertAction.Style.default, handler: nil))
        
        alertController.addAction(UIAlertAction(title: "Unhelpful..", style: UIAlertAction.Style.default, handler: nil))
        
        present(alertController, animated: true, completion: nil)
    }


}

