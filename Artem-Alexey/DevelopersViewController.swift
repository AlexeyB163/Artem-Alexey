//
//  DevelopersViewController.swift
//  Artem-Alexey
//
//  Created by Артем ШАЛИН on 13.02.2022.
//

import UIKit

class DevelopersViewController: UIViewController {
    
    let developers = Developer.getDevelopers()
    
}

extension DevelopersViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        developers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "developerCell", for: indexPath)
        let developer = developers[indexPath.row];
        
        var content = cell.defaultContentConfiguration()
        
        content.text = developer.name
        content.secondaryText = developer.email

        cell.contentConfiguration = content
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
