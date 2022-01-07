//
//  ViewController.swift
//  ios_2021_mid_exam
//
//  Created by Ivan Stoilov on 7.01.22.
//

import UIKit

final class BookPreviewViewController: UIViewController {

    @IBOutlet private weak var bookTitleLabel: UILabel!
    @IBOutlet private weak var bookImageView: UIImageView!
    @IBOutlet private weak var bookAuthorLabel: UILabel!
    @IBOutlet private weak var bookRating: UILabel!
    @IBOutlet private weak var bookDescription: UITextView!
    
    public var book: Book? {
        didSet {
            updateUI()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }
    
    private func updateUI() {
        bookTitleLabel.text = book?.title
        bookImageView.image = UIImage(named: book?.photo ?? "")
        bookAuthorLabel.text = book?.author
        bookRating.text = String(Double(book?.rating ?? 0))
        bookDescription.text = book?.description
    }
    
}

