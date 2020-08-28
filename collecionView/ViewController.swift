//
//  ViewController.swift
//  collecionView
//
//  Created by 野澤拓己 on 2020/08/28.
//  Copyright © 2020 Takumi Nozawa. All rights reserved.
//

import UIKit

struct Model {
    
    let text: String
    let imageName: String
    
    init(text: String, imageName: String) {
        
        self.text = text
        self.imageName = imageName
        
    }
    
}

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet var table: UITableView!
    
    var models = [Model]()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        models.append(Model(text: "First", imageName: "bike1"))
        models.append(Model(text: "Second", imageName: "bike2"))
        models.append(Model(text: "Third", imageName: "bike3"))
        models.append(Model(text: "Demo", imageName: "bike4"))
        
        models.append(Model(text: "First", imageName: "bike1"))
        models.append(Model(text: "Second", imageName: "bike2"))
        models.append(Model(text: "Third", imageName: "bike3"))
        models.append(Model(text: "Demo", imageName: "bike4"))
        
        models.append(Model(text: "First", imageName: "bike1"))
        models.append(Model(text: "Second", imageName: "bike2"))
        models.append(Model(text: "Third", imageName: "bike3"))
        models.append(Model(text: "Demo", imageName: "bike4"))
        
        
        table.register(CollectionTableViewCell.nib(), forCellReuseIdentifier: CollectionTableViewCell.identifier)
        
        table.delegate = self
        table.dataSource = self
        
    }
    
    // Table
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 1
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = table.dequeueReusableCell(withIdentifier: CollectionTableViewCell.identifier, for: indexPath) as! CollectionTableViewCell
        
        cell.configure(with: models)
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 250.0
        
    }
    


}


