//
//  PaintingTableViewCell.swift
//  ArtGalleryTacoCat
//
//  Created by Ilgar Ilyasov on 9/5/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

protocol PaintingTableViewCellDelegate: class {
    func likeButtonTapped(on cell: PaintingTableViewCell)
}

class PaintingTableViewCell: UITableViewCell {
    
    weak var delegate: PaintingTableViewCellDelegate?
    
    var painting: Painting? {
        didSet { updateViews() }
    }
    
    @IBOutlet weak var imageViewOutlet: UIImageView!
    
    @IBOutlet weak var buttonOutlet: UIButton!
    @IBAction func buttonAction(_ sender: Any) {
        delegate?.likeButtonTapped(on: self)
    }
    
    func updateViews(){
        guard let unwrappedPainting = painting else { return }
        imageViewOutlet.image = unwrappedPainting.image
        
        let text = unwrappedPainting.isLiked ? "Liked" : "Unliked"
        buttonOutlet.setTitle(text, for: .normal)
    }
}
