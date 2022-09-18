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
    let alphaDefault = 0.3
        
    
    override func viewDidLoad() {
        super.viewDidLoad()
        buttonChangeColor.setTitle("START", for: .normal)
        for view in viewsTraficLight {
            view.alpha = alphaDefault
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
        if viewsTraficLight.filter({ $0.alpha == 1 }).count == 0 {
            viewsTraficLight.first?.alpha = 1
        } else {
            for (index, view) in viewsTraficLight.enumerated() {
                if view.alpha == 1 {
                    view.alpha = alphaDefault
                    viewsTraficLight[index + (index == 2 ? -2 : 1)].alpha = 1
                    break
                }
            }
        }
    }
    
}

