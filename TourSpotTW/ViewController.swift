//
//  ViewController.swift
//  TourSpotTW
//
//  Created by 林松賢 on 2018/3/13.
//  Copyright © 2018年 軟實力工作室. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var spots:[Spot] = [
        Spot(spotName: "奇美博物館", spotLocation: "台南市仁德區文華路二段66號", spotTelephone: "06-2660808", spotOpenHours: "9:30-17:30", spotImage: "奇美博物館.jpg"),
        Spot(spotName: "周氏蝦捲", spotLocation: "台南市安平區安平路408號-1", spotTelephone: "06-2801304", spotOpenHours: "", spotImage: "周氏蝦捲.jpg"),
        Spot(spotName: "四草綠色隧道", spotLocation: "台南市安南區大眾路360號", spotTelephone: "06-2841610", spotOpenHours: "9:00-17:30", spotImage: "四草綠色隧道.jpg"),
        Spot(spotName: "安平留飯店", spotLocation: "台南市安平區府前四街99號", spotTelephone: "06-2982000", spotOpenHours: "", spotImage: "安平留飯店.jpg"),
        Spot(spotName: "府城食府", spotLocation: "台南市華平路152號", spotTelephone: "06-2951000", spotOpenHours: "", spotImage: "府城食府.jpg"),
        Spot(spotName: "水鳥和洋創作料理", spotLocation: "台南市東區東安路271號", spotTelephone:  "06-2373237", spotOpenHours: "", spotImage: "水鳥和洋創作料理.jpg"),
        Spot(spotName: "安平樹屋", spotLocation: "台南市安平區古堡街108號", spotTelephone: "", spotOpenHours: "8:30-17:30", spotImage: "安平樹屋.jpg"),
        Spot(spotName: "台南知事官邸", spotLocation: "台南市衛民街1號", spotTelephone: "", spotOpenHours: "10:00-18:00", spotImage: "台南知事官邸.jpg")
    ]
    
    @IBOutlet var masterTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        masterTableView.dataSource = self
        masterTableView.delegate = self
        
        
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 180.0
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return spots.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //config cell...
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! SpotTableViewCell
        
        cell.spotImage.image = UIImage(named: spots[indexPath.row].spotImage)
        cell.spotName.text = spots[indexPath.row].spotName
        cell.spotLocation.text = spots[indexPath.row].spotLocation
        cell.spotTelephone.text = spots[indexPath.row].spotTelephone
        cell.spotOpenHours.text = spots[indexPath.row].spotOpenHours
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "spotDetailSegue" {
            if let indexPath = masterTableView.indexPathForSelectedRow {
                let destinationViewController = segue.destination as! SpotDetailViewController
                destinationViewController.spot = spots[indexPath.row]
            }
        }
    }
}
