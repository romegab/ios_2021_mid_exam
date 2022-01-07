//
//  BookTableViewCell.swift
//  ios_2021_mid_exam
//
//  Created by Ivan Stoilov on 7.01.22.
//

import UIKit

final class BookTableViewCell: UITableViewCell {
    
    @IBOutlet private weak var bookTitleLabel: UILabel!
    @IBOutlet private weak var bookImageView: UIImageView!
    @IBOutlet weak var viewButton: UIButton!
    
    private var book: Book? {
        didSet {
            updateUI()
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setUpCornerRadius()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    private func setUpCornerRadius() {
        bookImageView.clipsToBounds = true
        viewButton.clipsToBounds = true
        
        bookImageView.layer.cornerRadius = 6
        viewButton.layer.cornerRadius = 6
    }
    
    private func updateUI() {
        bookTitleLabel.text = book?.title ?? "title"
        bookImageView.image = UIImage(named: book?.photo ?? "")
    }
    
    @IBAction private func viewButtonPressed(_ sender: UIButton) {
        print("view button was pressed")
    }
    
}
