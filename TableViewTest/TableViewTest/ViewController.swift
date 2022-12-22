//
//  ViewController.swift
//  TableViewTest
//
//  Created by 이준협 on 2022/12/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //row의 갯수를 리턴
        return titleArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //row를 나타낼 cell 설정
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? TableCell else {
             return UITableViewCell()
         }
        
        cell.title.text = titleArray[indexPath.row]
        cell.contents.text = contentsArray[indexPath.row]
        return cell
    }
    
    
    let titleArray = ["제목1","제목2","제목3"]
    let contentsArray = ["내용1","내용2","내용3"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
}
    

class TableCell: UITableViewCell {
    
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var contents: UILabel!
}

