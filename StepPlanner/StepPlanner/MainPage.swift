//
//  MainPage.swift
//  StepPlanner
//
//  Created by Myoung gun Ahn on 2017. 2. 19..
//  Copyright © 2017년 Myoung gun Ahn. All rights reserved.
//

import UIKit

class MainPage: UIViewController {
    
    var iFloorNum : Int = 0
    
    @IBOutlet var planeSetView: UIView!
    
    @IBOutlet var floorTxtField: UITextField!
    
    @IBAction func PlusfloorNum(_ sender: Any) {
        iFloorNum = iFloorNum + 1
        
        floorTxtField.text = iFloorNum.description
    }
    @IBAction func MinusfloorNum(_ sender: Any) {
        iFloorNum = iFloorNum - 1
        
        if(iFloorNum < 0)
        {
            iFloorNum = 0
        }
        
        floorTxtField.text = iFloorNum.description
    }
    
    @IBAction func AddPlane(_ sender: Any) {
        planeSetView.isHidden = false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        planeSetView.isHidden = true
        floorTxtField.text = "0"
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
