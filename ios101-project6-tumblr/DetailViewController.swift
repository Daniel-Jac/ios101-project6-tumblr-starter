//
//  DetailViewController.swift
//  ios101-project6-tumblr
//
//  Created by Daniel Jachero on 4/9/25.
//

import UIKit
import Nuke

class DetailViewController: UIViewController {

    @IBOutlet weak var detailImageView: UIImageView!
    @IBOutlet weak var captionTextView: UITextView!

    var post: Post!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Make sure the text view isn't editable
        captionTextView.isEditable = false

        // Set the caption, removing HTML tags
        captionTextView.text = post.caption.trimHTMLTags()

        // Load the image
        if let photo = post.photos.first {
            Nuke.loadImage(with: photo.originalSize.url, into: detailImageView)
        }
    }
}
