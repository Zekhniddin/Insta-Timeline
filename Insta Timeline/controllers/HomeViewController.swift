//
//  HomeViewController.swift
//  Insta Timeline
//
//  Created by Зехниддин on 12/5/20.
//

import UIKit

class HomeViewController: BaseViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var tableView: UITableView!
    
    var items: Array<Post> = Array()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        initViews()
    }

    // MARK: - Method
    
    func initViews() {
        setNavigationBar()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        items.append(Post(profileImage: "im_person1", fullName: "Alex", time: "12 minut ago", postImage1: "im_post1", postImage2: "im_post2", postImage3: "im_post3", likes: 100, postText: "Latin words, combined with a handful of model sentence structures"))
        items.append(Post(profileImage: "im_person2", fullName: "Anna", time: "2 hours 7 minut ago", postImage1: "im_post4", postImage2: "im_post5", postImage3: "im_post6", likes: 200, postText: "There are many variations of passages"))
        items.append(Post(profileImage: "im_person1", fullName: "Alex", time: "12 minut ago", postImage1: "im_post1", postImage2: "im_post2", postImage3: "im_post3", likes: 100, postText: "Latin words, combined with a handful of model sentence structures"))
        items.append(Post(profileImage: "im_person2", fullName: "Anna", time: "2 hours 7 minut ago", postImage1: "im_post4", postImage2: "im_post5", postImage3: "im_post6", likes: 200, postText: "There are many variations of passages"))
        
    }
    
    func setNavigationBar() {
        title = "Instagram"
        
        let camera = UIImage(named: "ic_camera")
        let send = UIImage(named: "ic_send")
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: camera, style: .plain, target: self, action: #selector(leftTapped))
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: send, style: .plain, target: self, action: #selector(rightTapped))
    }
    
    // MARK: - Action

    @objc func leftTapped() {
        
    }
    
    @objc func rightTapped() {
        
    }
    
    // MARK: - Table View
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let item = items[indexPath.row]
        
        let cell = Bundle.main.loadNibNamed("PostTableViewCell", owner: self, options: nil)?.first as! PostTableViewCell
        
        cell.profileImageView.image = UIImage(named: item.profileImage!)
        cell.fullnameLabel.text = item.fullName
        cell.timeLabel.text = item.time
        cell.postImageView1.image = UIImage(named: item.postImage1!)
        cell.postImageView2.image = UIImage(named: item.postImage2!)
        cell.postImageView3.image = UIImage(named: item.postImage3!)
        cell.likesLabel.text = "\(item.likes!) likes"
        cell.postLabel.text = item.postText
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 900
    }
}
