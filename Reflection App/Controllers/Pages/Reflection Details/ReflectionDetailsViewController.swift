//
//  ReflectionDetailsViewController.swift
//  Reflection App
//
//  Created by Lorenzo on 04/06/2020.
//  Copyright © 2020 Giovanni Prisco. All rights reserved.
//

import UIKit

class ReflectionDetailsViewController: UIViewController {
    var reflection: Reflection!
    
    @IBOutlet weak var firstQuestion: UILabel!
    @IBOutlet weak var secondQuestion: UILabel!
    @IBOutlet weak var firstAnswer: UITextView!
    @IBOutlet weak var secondAnswer: UITextView!
    
    @IBOutlet weak var iconDetails: UIImageView!
    @IBOutlet weak var dateDetails: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        firstQuestion.text = NSLocalizedString(reflection.firstQuestion!, comment: "First Question")
        firstAnswer.text = reflection.firstAnswer ?? ""
        
        secondQuestion.text = NSLocalizedString(reflection.secondQuestion!, comment: "Second Question")
        secondAnswer.text = reflection.secondAnswer ?? ""
        
        dateDetails.text = reflection.date?.text ?? ""
        iconDetails.image = UIImage(named: reflection.moodImage ?? "")
    }
    
    @IBAction func onDismiss(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
}
