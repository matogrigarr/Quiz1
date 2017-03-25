//
//  ViewController.swift
//  Quiz
//
//  Created by Matej Grigar on 25/03/2017.
//  Copyright © 2017 Matej Grigar. All rights reserved.
//

import UIKit

class QuestionController: UITableViewController {

    
    let cellID = "cellID"
    let headerID = "headerID"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "Otazka"
        
        tableView.register(AnswerCell.self, forCellReuseIdentifier: cellID)
        tableView.register(QuestionHeader.self, forHeaderFooterViewReuseIdentifier: headerID)
        
        tableView.sectionHeaderHeight = 50
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
     override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath)
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        return tableView.dequeueReusableHeaderFooterView(withIdentifier: headerID)
    }
}

class QuestionHeader: UITableViewHeaderFooterView {
    override init( reuseIdentifier: String?){
        super.init(reuseIdentifier: reuseIdentifier)
        setupViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
   
        
        let nameLabel: UILabel = {
            let label = UILabel()
            label.text = "Otazka Skuska"
            label.font = UIFont.systemFont(ofSize: 14);
            label.translatesAutoresizingMaskIntoConstraints = false
            return label
        }()
        
        func setupViews(){
            addSubview(nameLabel)
            addConstraints(NSLayoutConstraint.constraints(withVisualFormat:"H:|-16-[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": nameLabel]))
            addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": nameLabel]))
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
         label.font = UIFont.systemFont(ofSize: 14);
         label.translatesAutoresizingMaskIntoConstraints = false
         return label
    }()
    
    func setupViews(){
        addSubview(nameLabel)
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat:"H:|-16-[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": nameLabel]))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": nameLabel]))
    }
    }}
