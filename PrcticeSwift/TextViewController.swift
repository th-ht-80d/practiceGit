//
//  ViewController.swift
//  PrcticeSwift
//
//  Created by 濱貴大 on 2023/03/20.
//

import UIKit

enum ButtonMenu {
    case apple
    case banana
    case orange
    
    var fruits: String {
        switch self {
        case .apple:
            return "りんご"
        case .banana:
            return "バナナ"
        case .orange:
            return "オレンジ"
        }
        
    }
}

class TextViewController: UIViewController {
    
    @IBOutlet weak var testLabel: UILabel!
    @IBOutlet weak var testButton: UIButton!
    
    var buttonLabel = "Newボタン"
    var nameLabel = "ハマ"
    var isName = false

    override func viewDidLoad() {
        super.viewDidLoad()
        changeAdd()
    }
    
    func changeAdd() {
        isName = true
        testButton.setTitle(buttonLabel, for: .normal)
    }
    
    func buttonFruits() {
        let apple = ButtonMenu.apple
        testLabel.text = apple.fruits
    }
    
    @IBAction func buttonTap(_ sender: Any) {
        let banana = ButtonMenu.banana
        if isName {
            testLabel.isHidden = true
        } else {
            buttonFruits()
        }
        
    }
    

}

