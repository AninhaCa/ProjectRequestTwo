//
//  MyCustomCellXIB.swift
//  ProjectRequestTwo
//
//  Created by Ana Paula Silva de Sousa on 16/03/23.
//

import UIKit
import SDWebImage

class MyCustomCellXIB: UITableViewCell {

    @IBOutlet var imagePizza: UIImageView!
    @IBOutlet var labelPizza: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setup(pizzaElement: PizzaElement?) {
        labelPizza.text = pizzaElement?.name ?? ""
    }
}
