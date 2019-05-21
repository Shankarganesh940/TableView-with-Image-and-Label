//
//  ViewController.swift
//  TableViewwithImagesandLabels
//
//  Created by Greeens5 on 20/05/19.
//  Copyright © 2019 Book. All rights reserved.
//

import UIKit
class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    @IBOutlet var tableview: UITableView!
    var animal = ["Lion"]
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.imageView?.image = UIImage(named: "Lion")
        cell.textLabel?.text = animal[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animal.count
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

