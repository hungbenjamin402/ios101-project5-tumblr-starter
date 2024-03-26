//
//  PostTableViewCell.swift
//  ios101-project5-tumblr
//
//  Created by benjamin on 3/25/24.
//

import UIKit
import Nuke

class PostTableViewCell: UITableViewCell {
    @IBOutlet weak var summaryLabel: UILabel!
    @IBOutlet weak var photoImageView: UIImageView!
    
    func configure(with post: Post) {
        summaryLabel.text = post.summary.decodingHTMLEntities()
        if let photoUrl = post.photos.first?.originalSize.url {
            Nuke.loadImage(with: photoUrl, into: photoImageView)
        }
    }
}
