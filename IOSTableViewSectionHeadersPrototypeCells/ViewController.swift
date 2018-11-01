//
//  ViewController.swift
//  IOSTableViewSectionHeadersPrototypeCells
//
//  Created by Iengpho on 11/1/18.
//  Copyright © 2018 Iengpho. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    let tableSectionNames = ["Section One", "Section Two", "Section Three"]
    let sDataOne = ["Row one", "Row two", "Row three"]
    let sDataTwo = ["Row one", "Row two", "Row three"]
    let sDataThree = ["Row one", "Row two", "Row three"]

    let tableSectionImages:[UIImage] = [UIImage.init(named: "facebook")!, UIImage.init(named: "twitter")!, UIImage.init(named: "camera")!]
    
    var sectionData:[Int:[String]] = [Int:[String]]()

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        sectionData = [0:sDataOne, 1:sDataTwo, 2:sDataThree]
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (sectionData[section]?.count)!
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
       return tableSectionNames.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return tableSectionNames[section]
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let cell = tableView.dequeueReusableCell(withIdentifier: "headerCell\(section)") as? HeaderCell
        cell?.setupCell(image: tableSectionImages[section], labelText: tableSectionNames[section])
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 56
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(sectionData[indexPath.section]![indexPath.row])
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        
        if cell == nil {
            cell = UITableViewCell.init(style: .default, reuseIdentifier: "cell")
        }
        
        cell?.textLabel?.text = sectionData[indexPath.section]![indexPath.row]
        
        return cell!
    }


}

