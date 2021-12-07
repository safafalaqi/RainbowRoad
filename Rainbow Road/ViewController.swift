//
//  ViewController.swift
//  Rainbow Road
//
//  Created by Safa Falaqi on 08/12/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var viewTable: UITableView!
    let backgroundColor:[UIColor] = [.red, .orange, .yellow,.green, .blue,.purple]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewTable.dataSource = self
        
    }


}

extension ViewController:UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return backgroundColor.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "RainbowCell", for: indexPath)

        cell.backgroundColor = backgroundColor[indexPath.row]
   
        return cell
    }
    
}
    

