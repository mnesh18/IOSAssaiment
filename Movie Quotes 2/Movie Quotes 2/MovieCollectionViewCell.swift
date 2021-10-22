//
//  MovieCollectionViewCell.swift
//  Movie Quotes 2
//
//  Created by M's MacBook  on 22/10/2021.
//

import UIKit

class MovieCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var MoviesPoster: UIImageView!
    @IBOutlet weak var MoviesName: UILabel!
    
    
    func setupCell(Poster: UIImage, Name: String){
        MoviesPoster.image = Poster
        MoviesName.text = "\(Name)"
    }
    
    
}
