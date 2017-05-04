//
//  ViewController.swift
//  MyHood
//
//  Created by newmac on 4/19/17.
//  Copyright © 2017 Sachin. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    var posts = [Post]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        
        var post1 = Post(imagePath: "", title: "Post 1", postDesc: "Post 1 description")
        var post2 = Post(imagePath: "", title: "post 2", postDesc: "Post 2 description")
        var post3 = Post(imagePath: "", title: "Post 3", postDesc: "Post 3 description")
        
        posts.append(post1)
        posts.append(post2)
        posts.append(post3)
        
        tableView.reloadData()
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return posts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let post = posts[indexPath.row]
        if let cell = tableView.dequeueReusableCell(withIdentifier: "PostCell") as? PostTableViewCell {
            cell.updateCell(post: post)
            return cell
        } else {
            let cell = PostTableViewCell()
            cell.updateCell(post: post)
            return cell
        }
    }
}



