//
//  ViewController.swift
//  Movie Quotes 2
//
//  Created by M's MacBook  on 22/10/2021.
//

import UIKit

struct Movies {
    let Poster: UIImage
    let Name: String
}

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    @IBOutlet weak var CollectionMovies: UICollectionView!
    
//    var FlowLayout: UICollectionViewFlowLayout!
    var arrMovies = [Movies]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        CollectionMovies.delegate = self
        CollectionMovies.dataSource = self
        
        arrMovies.append(Movies(Poster: UIImage(named: "12 Angry Men")!, Name: "12 Angry Men"))
        arrMovies.append(Movies(Poster: UIImage(named: "Fight Club")!, Name: "Fight Club"))
        arrMovies.append(Movies(Poster: UIImage(named: "Forrest Gump")!, Name: "Forrest Gump"))
        arrMovies.append(Movies(Poster: UIImage(named: "Inception")!, Name: "Inception"))
        arrMovies.append(Movies(Poster: UIImage(named: "Pulp Fiction")!, Name: "Pulp Fiction"))
        arrMovies.append(Movies(Poster: UIImage(named: "Red Notice")!, Name: "Red Notice"))
        arrMovies.append(Movies(Poster: UIImage(named: "Schindler's List")!, Name: "Schindler's List"))
        arrMovies.append(Movies(Poster: UIImage(named: "1")!, Name: "The Dark Knight"))
        arrMovies.append(Movies(Poster: UIImage(named: "The Godfather")!, Name: "The Godfather"))
        arrMovies.append(Movies(Poster: UIImage(named: "The Shawshank Redemption")!, Name: "The Shawshank Redemption"))
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let Destination = segue.destination as! MovieQuotesViewController
        let movieQuotes = sender as! MovieCollectionViewCell
        
        if movieQuotes == arrMovies.count[0, 0]() {
            Destination.MovieQuote = "Test1" }
//         eles if movieQuotes == arrMovies[0 ,1] {
//            Destination.MovieQuote = "Test2"
//        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        arrMovies.count
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: self.view.frame.width * 0.34 , height: self.view.frame.width * 0 )
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 2
    }
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
//        return 0.1
//    }
    
//    I have here another problem with width of Posters
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MovieCell", for: indexPath) as! MovieCollectionViewCell
        let MoviesQ = arrMovies[indexPath.row]
        cell.setupCell(Poster: MoviesQ.Poster, Name: MoviesQ.Name)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let item = arrMovies[indexPath.item]
        performSegue(withIdentifier: "ViewSegue", sender: item)
    }
    
//    private func SetupCollectionViewItemSize(){
//        if FlowLayout == nil {
//            let numberOfItemPerRow: CGFloat = 1
//            let lineSpacing: CGFloat = 1
//            let interItemSpacing: CGFloat = 1
//
//            let width = (CollectionMovies.frame.width - (numberOfItemPerRow - 1) * interItemSpacing) / numberOfItemPerRow
//
//            let heigh = width
//            FlowLayout = UICollectionViewFlowLayout()
//            FlowLayout.itemSize = CGSize(width: width, height: heigh)
//            FlowLayout.sectionInset = UIEdgeInsets.zero
//            FlowLayout.scrollDirection = .vertical
//            FlowLayout.minimumLineSpacing = lineSpacing
//            FlowLayout.minimumInteritemSpacing = interItemSpacing
//
//            CollectionMovies.setCollectionViewLayout(FlowLayout, animated: true)
////              I Have Proplem with Heigh of Posters
//
//        }
//    }
    
    

}

