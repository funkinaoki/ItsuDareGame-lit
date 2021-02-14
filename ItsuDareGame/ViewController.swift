//
//  ViewController.swift
//  ItsuDareGame
//
//  Created by 八幡尚希 on 2021/02/04.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var itsuLabel: UILabel!
    @IBOutlet var dokodeLabel: UILabel!
    @IBOutlet var daregaLabel: UILabel!
    @IBOutlet var doshiteLabel: UILabel!
    
    let itsuArray: [String] = ["一年前", "一週間前", "昨日", "今日"]
    let dokodeArray: [String] = ["山の上で", "アメリカで", "学校で", "クラスで"]
    let daregaArray: [String] = ["僕が", "先生が", "君が", "大統領が"]
    let doshiteArray: [String] = ["叫んだ", "動いた", "嘆いた", "騒いだ"]
    
    var itsuindex: Int = 0
    var dokodeindex: Int = 0
    var daregaindex: Int = 0
    var doshiteindex: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func change(){
        itsuindex = itsuindex + 1
        dokodeindex = dokodeindex + 1
        daregaindex = daregaindex + 1
        doshiteindex = doshiteindex + 1
        
        if itsuindex > 3{
            itsuindex = 0
        }
        if dokodeindex > 3{
            dokodeindex = 0
        }
        if daregaindex > 3{
            daregaindex = 0
        }
        if doshiteindex > 3{
            doshiteindex = 0
        }
        
        itsuLabel.text = itsuArray[itsuindex]
        dokodeLabel.text = dokodeArray[dokodeindex]
        daregaLabel.text = daregaArray[daregaindex]
        doshiteLabel.text = doshiteArray[doshiteindex]
        
    
    }
    
    @IBAction func reset(){
        itsuLabel.text = "----"
        dokodeLabel.text = "----"
        daregaLabel.text = "----"
        doshiteLabel.text = "----"
        
        itsuindex = 0
        
        dokodeindex = 0
        
        daregaindex = 0
        
        doshiteindex = 0
        
    }
    
    @IBAction func random(){
        itsuindex = Int.random(in: 0...3)
        dokodeindex = Int.random(in: 0...3)
        daregaindex = Int.random(in: 0...3)
        doshiteindex = Int.random(in: 0...3)
        
        itsuLabel.text = itsuArray[itsuindex]
        dokodeLabel.text = dokodeArray[dokodeindex]
        daregaLabel.text = daregaArray[daregaindex]
        doshiteLabel.text = doshiteArray[doshiteindex]
     
    }


}

