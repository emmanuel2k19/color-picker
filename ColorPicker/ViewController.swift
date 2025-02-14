//
//  ViewController.swift
//  ColorPicker
//
//  Created by Emmanuel Pena on 2/13/25.
//

import UIKit

class ViewController: UIViewController, ColorPickerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        // Do any additional setup after loading the view.
    }
    func didPickColor(_ color: UIColor) {
        view.backgroundColor = color
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if segue.identifier == "goToColorPicker",
               let destinationVC = segue.destination as? SecondViewController {
                destinationVC.delagate = self
            }
        }
    }
    
    


