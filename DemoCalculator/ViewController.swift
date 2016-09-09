//
//  ViewController.swift
//  DemoCalculator
//
//  Created by TTB10912 on 09/09/2016.
//  Copyright © 2016 TTB10912. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textFieldToResultLabel: NSLayoutConstraint!
    
    @IBOutlet weak var resultLabelToMidView: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func updateViewConstraints() {
        super.updateViewConstraints()
        
        updateViewConstraints()
    }
    func updateContrain(){
        let scale = UIScreen.mainScreen().bounds.size.height / 667
        
        resultLabelToMidView.constant = UIScreen.mainScreen().bounds.size.height > 480 ? resultLabelToMidView.constant * scale : resultLabelToMidView.constant * 0.1
        
        
        textFieldToResultLabel.constant = UIScreen.mainScreen().bounds.size.height > 480 ? textFieldToResultLabel.constant * scale : textFieldToResultLabel.constant * 0.1
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

