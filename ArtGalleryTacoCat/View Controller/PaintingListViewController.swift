//
//  PaintingListViewController.swift
//  ArtGalleryTacoCat
//
//  Created by Ilgar Ilyasov on 9/5/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class PaintingListViewController: UIViewController, UITableViewDataSource {

    @IBOutlet weak var tableViewOutlet: UITableView!
    let paintingController = PaintingController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewOutlet.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return paintingController.paintings.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableViewOutlet.dequeueReusableCell(withIdentifier: "ArtCell", for: indexPath)
        guard let unwrappedCell = cell  as? PaintingTableViewCell else { return cell }
        
        let aPainting = paintingController.paintings[indexPath.row]
        unwrappedCell.painting = aPainting
        
        
        return unwrappedCell
    }
    
}
