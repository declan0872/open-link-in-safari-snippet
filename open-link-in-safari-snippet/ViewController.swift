//
//  ViewController.swift
//  open-link-in-safari-snippet
//
//  Created by Declan on 29/05/2019.
//  Copyright © 2019 Declan. All rights reserved.
//

import UIKit
import SafariServices

class ViewController: UIViewController {

    @IBAction func buttonTapped(_ sender: Any) {
        //Set URL
        showSafariViewController(for: "https://www.google.com")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    func showSafariViewController (for url: String) {
        
        guard let url = URL(string: url) else {
            //Show an invalid URL alert
            return
        }
        
        let safariVC = SFSafariViewController(url: url)
        present(safariVC, animated: true)
        
    }
    

}

