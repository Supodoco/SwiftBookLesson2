//
//  ViewController.swift
//  SwiftBookLesson2
//
//  Created by Supodoco on 17.09.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var buttonChangeColor: UIButton!
    @IBOutlet var viewsTraficLight: [UIView]!
    let alpha = 0.30000001192092896
        
    
    override func viewDidLoad() {
        super.viewDidLoad()
        buttonChangeColor.setTitle("START", for: .normal)
        for view in viewsTraficLight {
            view.alpha = 0.3
        }
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        for view in viewsTraficLight {
            view.layoutIfNeeded()
            view.layer.cornerRadius = view.frame.size.width / 2
        }
    }

    @IBAction func buttonChangeColorTapped(_ sender: UIButton) {
        sender.setTitle("NEXT", for: .normal)
        if viewsTraficLight[0].alpha == alpha && viewsTraficLight[1].alpha == alpha {
            viewsTraficLight[0].alpha = 1
            viewsTraficLight[2].alpha = alpha
        } else if viewsTraficLight[1].alpha == alpha {
            viewsTraficLight[1].alpha = 1
            viewsTraficLight[0].alpha = alpha
        } else {
            viewsTraficLight[2].alpha = 1
            viewsTraficLight[1].alpha = alpha
        }
    }
    
}

