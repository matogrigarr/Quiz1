//
//  ViewController.swift
//  Quiz
//
//  Created by Matej Grigar on 25/03/2017.
//  Copyright © 2017 Matej Grigar. All rights reserved.
//

import UIKit

class QuestionController: UITableViewController {

    
    let  cellID = "cellID"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "Otazka"
        
        tableView.register(AnswerCell.self, forCellReuseIdentifier: cellID)
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
     override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
     func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) ->UITableViewCell{
        return tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath)
    }

}

class AnswerCell: UITableViewCell{
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    let nameLabel: UILabel = {
         let label = UILabel()
         label.text = "Odpoved"
         label.translatesAutoresizingMaskIntoConstraints = false
         return label
    }()
    
    func setupViews(){
        addSubview(nameLabel)
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat:"H:|[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": nameLabel]))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": nameLabel]))
    }
}
