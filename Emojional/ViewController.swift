//
//  ViewController.swift
//  Emojional
//
//  Created by Fiona Oh on 5/5/21.
//

import UIKit

class ViewController: UIViewController {
    
    let emojis = ["🥲": "single tear", "😖": "embarrassed", "😴": "sleepy", "🥰": "love"]
    let customMessages1 = ["single tear" : ["it do be like that sometimes", "it's ok!!", "you got this!"], "embarrassed" : ["no one remembers!", "it happens to everyone", "it's in the past! look to the future"], "sleepy" : ["time for a nap!", "let's take a break tonight", "sleep in tomorrow morning!"], "love" : ["happy day!", "you are wonderful", "you are loved"]]
    let customMessages2 = ["single tear" : ["tough times never last but tough people do", "and still, I rise", "embrace the glorious mess that you are"], "embarrassed" : ["I have nothing to lose but something to gain", "turn your wounds into wisdom", "I will remember and recover, not forgive and forget"], "sleepy" : ["reality is wrong, dreams are for real", "determine your priorities and focus on them", "dream as if you'll live forever, live as if you'll die today"], "love" : ["love for all, hatred for none", "let the beauty of what you love be what you do", "a happy soul is the best shield for a cruel world"]]
    
    var list = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func showMessage(sender: UIButton) {
        //print out a message!
        
        let selectedEmotion = sender.titleLabel?.text
        let options : [String]
        
        if list {
            options = customMessages1[emojis[selectedEmotion!]!]!
        } else {
            options = customMessages2[emojis[selectedEmotion!]!]!
        }
        
        let emojiMessage = options[Int.random(in: 0..<3)]
        let alertController = UIAlertController(title: emojis[selectedEmotion!]!, message: emojiMessage, preferredStyle: UIAlertController.Style.alert)
        
        func handler(alert: UIAlertAction!) {
            list = !list
        }
        
        alertController.addAction(UIAlertAction(title: "Thank you!", style: UIAlertAction.Style.default, handler: nil))
        alertController.addAction(UIAlertAction(title: "Unhelpful..", style: UIAlertAction.Style.default, handler: handler))
        
        present(alertController, animated: true, completion: nil)
        
        print(list)
    }
    


}

