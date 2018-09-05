//
//  PaintingController.swift
//  ArtGalleryTacoCat
//
//  Created by Ilgar Ilyasov on 9/5/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation
import UIKit

class PaintingController {
    private(set) var paintings: [Painting] = []
    
    func loadPaintingsFromAssets(image: UIImage) {
        
        for index in 1...12 {
            let imageName = "image + \(index)"
            guard let newImage = UIImage(named: imageName) else { print("Wrong image name"); return}
            let newPainting = Painting(image: newImage)
            paintings.append(newPainting)
        }
    }
    
    func toggleIsLiked(for painting: Painting) {
        painting.isLiked = !painting.isLiked
    }
}
