//
//  RatingPizzaViewController.swift
//  ProjectRequestTwo
//
//  Created by Ana Paula Silva de Sousa on 16/03/23.
//

import UIKit

class RatingPizzaViewController: UIViewController {

    @IBOutlet var buttonBack: UIButton!
    @IBOutlet var labelRating: UILabel!
    @IBOutlet var labelName: UILabel!
    @IBOutlet var imageRating: UIImageView!
    
    var ratingPizza: PizzaElement?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelName.text = "AVALIAÇÃO CLIENTE"
        labelRating.text = "Para Nossos Clientes, a Pizza \(ratingPizza?.name ?? "") está na posição - \(ratingPizza?.rating ?? 0)/5 - de Aprovação"
        let urlImage = URL(string: ratingPizza?.imageURL ?? "")
        imageRating.sd_setImage(with: urlImage)

    }
    
    @IBAction func back(_ sender: Any) {
        buttonBack.backgroundColor = .black
        self.dismiss(animated: true)
    }
}
