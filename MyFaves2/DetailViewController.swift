//
//  DetailViewController.swift
//  mf
//
//  Created by Charles Konkol on 9/8/19.
//  Copyright © 2019 Charles Konkol. All rights reserved.
//

import UIKit
//1 Add import
import WebKit

class DetailViewController: UIViewController {

    @IBOutlet weak var detailDescriptionLabel: UILabel!

    @IBOutlet weak var WebSite: WKWebView!
    
    
    func configureView() {
//2 Update the user interface for the detailitem.
        if detailItem != "" {
//3 Comment out next 3 lines
//            if let label = detailDescriptionLabel {
//                label.text = detail.description
//            }

//4 Add next 6 likes of code
            if let myWebview = WebSite {
                if let url = URL(string: detailItem) {
                    let request = URLRequest(url: url)
                    myWebview.load(request)
                }
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        configureView()
    }

//4) Change to String?
    var detailItem: String? {
        didSet {
            // Update the view.
            configureView()
        }
    }


}

