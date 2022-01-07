//
//  ViewController.swift
//  ios_2021_mid_exam
//
//  Created by Ivan Stoilov on 7.01.22.
//

import UIKit

final class ViewController: UIViewController {

    @IBOutlet private weak var tableView: UITableView!
    
    private var books = Model().books
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.register(UINib(nibName: "BookTableViewCell", bundle: nil), forCellReuseIdentifier: "BookCell")
    }
    
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return books.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "BookCell") as! BookTableViewCell
        cell.book = books[indexPath.row]
        return cell
    }
    
}

