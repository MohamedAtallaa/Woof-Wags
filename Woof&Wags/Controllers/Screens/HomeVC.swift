//
//  HomeVC.swift
//  Woof&Wags
//
//  Created by Mohamed Atallah on 23/03/2023.
//

import UIKit

class HomeVC: UIViewController {
    
    let tableView = UITableView()
    var posts = [Post]()
    
    
    // MARK: - Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureTableView()
        
        view.backgroundColor = .systemPink
//
//        PostStore.shared.getPost()
        
    }
    
    private func configureTableView() {
        view.addSubview(tableView)
        tableView.frame = view.bounds
        tableView.rowHeight = 520
        
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.register(PostCell.self, forCellReuseIdentifier: PostCell.defaultReuseIdentifier)
    }
    
}


extension HomeVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: PostCell.defaultReuseIdentifier, for: indexPath) as! PostCell
        cell.set()
        return cell
    }
    
 
}
