//
//  ViewController.swift
//  T_Estes_FreeStyleApp4
//
//  Created by Tracy Estes on 6/23/20.
//  Copyright © 2020 Tracy Estes. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var userInput: UITextField!
    
    @IBOutlet weak var myTableView: UITableView!
    
var tvShowArray = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myTableView.delegate = self
        myTableView.dataSource = self
        tvShowArray = ["The Walking Dead", "Killing Eve", "Grey's Anatomy", "Law and Order: SVU"]
        // Do any additional setup after loading the view.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tvShowArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellID")
        if let label = cell?.contentView.viewWithTag(101)as? UILabel {
            label.text = tvShowArray[indexPath.row]
            
        }
        if let buttonDelete = cell?.contentView.viewWithTag(102) as? UIButton {
            buttonDelete.addTarget(self, action: #selector(deleteRow(_:)), for: .touchUpInside)
        }
        return cell!
    }
    @IBAction func addRow (_sender: UIButton) {
        tvShowArray.insert(userInput.text ?? "Please enter a show", at: 0)
        myTableView.insertRows(at: [IndexPath(row: 0, section: 0)], with: .right)
        userInput.text?.removeAll()
    }
    @objc func deleteRow (_ sender: UIButton) {
        let point = sender.convert(CGPoint.zero, to: myTableView)
        guard let indexPath = myTableView.indexPathForRow(at: point) else {
            return }
        tvShowArray.remove(at: indexPath.row)
        myTableView.deleteRows(at: [indexPath], with: .left)
        
        }
}
    


