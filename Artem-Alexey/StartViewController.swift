//
//  StartViewController.swift
//  Artem-Alexey
//
//  Created by User on 09.02.2022.
//

import UIKit

class StartViewController: UIViewController {

    let dataFilm = Film.getDataFilm()
    let dataNews = News.getNews()
    
    @IBOutlet weak var coverCollectionView: UICollectionView!

    @IBOutlet weak var newsTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.backButtonTitle = "Назад"
                
        coverCollectionView.register(UINib(nibName: "CoverCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "cover")
        
        coverCollectionView.dataSource = self
        coverCollectionView.delegate = self
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        switch segue.identifier {
        case "toDescription" :
            guard let descriptionVC = segue.destination as? DescriptionFilmViewController else { return }
            descriptionVC.data = sender as? Film
        default :
            guard let newsDescripVC = segue.destination as? NewsDescriptionViewController else { return }
            guard let indexPath = newsTableView.indexPathForSelectedRow else {return}
            newsDescripVC.data = dataNews[indexPath.row]
            newsDescripVC.cover = dataFilm[indexPath.row].cover
        }
    }

    
    @IBAction func goToCinemaButton() {
    }
    
    @IBAction func developersButton() {
    }
    
    
}

extension StartViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        dataFilm.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellNews", for: indexPath) as! NewsTableViewCell
        cell.newsImage.image = UIImage(named: NewsImage.allValue[indexPath.row].rawValue)
        cell.newsLabel.text = dataNews[indexPath.row]
        
        return cell
    }
    
}

extension StartViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        dataFilm.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cover", for: indexPath) as! CoverCollectionViewCell
        let coverImage = dataFilm[indexPath.item].cover
        let coverTitle = dataFilm[indexPath.item].title
        cell.setCell(cover: coverImage, title: coverTitle)
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        didSelectItemAt indexPath: IndexPath) {
        let data = dataFilm[indexPath.item]
        performSegue(withIdentifier: "toDescription", sender: data)
    }
}
