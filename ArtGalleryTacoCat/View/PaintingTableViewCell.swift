//
//  PaintingTableViewCell.swift
//  ArtGalleryTacoCat
//
//  Created by Ilgar Ilyasov on 9/5/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class PaintingTableViewCell: UITableViewCell {
    
    var painting: Painting? {
        didSet { updateViews() }
    }
    
    @IBOutlet weak var imageViewOutlet: UIImageView!
    
    @IBOutlet weak var buttonOutlet: UIButton!
    @IBAction func buttonAction(_ sender: Any) {
        
    }
    
    func updateViews(){
        guard let unwrappedPainting = painting else { return }
        imageViewOutlet.image = unwrappedPainting.image
        
        buttonOutlet.titleLabel?.text = unwrappedPainting.isLiked ? "Liked" : "Unliked"
    }
    
}
