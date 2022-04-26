//
//  ViewController.swift
//  MyFirstSwiftApp
//
//  Created by Molly Caffery on 4/26/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var tableView: UITableView!

    var allTasks = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

// Table delegate manages headers, footers, height/widths, and row selections.
extension ViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

// Handles data control/flow.
extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return allTasks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        return cell
    }
    
}

