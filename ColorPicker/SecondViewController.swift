//
//  SecondViewController.swift
//  ColorPicker
//
//  Created by Emmanuel Pena on 2/13/25.
//

import UIKit
protocol ColorPickerDelegate: AnyObject {
    func didPickColor(_ color: UIColor)
}
class SecondViewController: UIViewController {
    
    weak var delagate : ColorPickerDelegate?
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        // Do any additional setup after loading the view.
    }
    

    @IBAction func redButtonPressed(_ sender: UIButton) {
        changeColorAndDismiss(color:.red)
    }
    
    
    
    @IBAction func blueButtonPressed(_ sender: UIButton){
        changeColorAndDismiss(color:.blue)
    }
    
    func changeColorAndDismiss(color: UIColor){
        if let previousVC = presentingViewController as? ViewController{
            previousVC.view.backgroundColor = color
        }
        dismiss(animated:true , completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
