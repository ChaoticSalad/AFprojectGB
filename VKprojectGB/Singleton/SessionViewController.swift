//
//  SessionViewController.swift
//  VKprojectGB
//
//  Created by Олег Черников on 28.11.2022.
//

import UIKit

class SessionViewController: UIViewController {
    @IBOutlet weak var idLabel: UILabel!
    @IBOutlet weak var tokenLabel: UILabel!
    
    let session = Session.shared
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        idLabel.text = String(session.id)
        tokenLabel.text = session.token

        // Do any additional setup after loading the view.
    }
    
}
