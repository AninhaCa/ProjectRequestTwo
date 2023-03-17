//
//  PricePizzaViewController.swift
//  ProjectRequestTwo
//
//  Created by Ana Paula Silva de Sousa on 16/03/23.
//

import UIKit
import SDWebImage

class PricePizzaViewController: UIViewController {

    @IBOutlet var imagePrice: UIImageView!
    @IBOutlet var labelName: UILabel!
    @IBOutlet var labelP: UILabel!
    @IBOutlet var labelM: UILabel!
    @IBOutlet var labelG: UILabel!
    @IBOutlet var buttonBack: UIButton!
    @IBOutlet var buttonAssessment: UIButton!
    
    var pricePizza: PizzaElement?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelName.text = pricePizza?.name
        labelP.text = "PEQUENA - R$\(pricePizza?.priceP ?? 0)"
        labelM.text = "MÉDIA - R$\(pricePizza?.priceM ?? 0)"
        labelG.text = "GRANDE - R$\(pricePizza?.priceG ?? 0) "
        let urlImage = URL(string: pricePizza?.imageURL ?? "")
        imagePrice.sd_setImage(with: urlImage)
    }
    
    @IBAction func back(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
        
    }
    
    @IBAction func assessment(_ sender: Any) {
        
    }
}
