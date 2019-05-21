//
//  FreeBlockViewController.swift
//  Peer to Peer
//
//  Created by Yerim on 5/16/19.
//  Copyright © 2019 Yerim. All rights reserved.
//

import UIKit

class FreeBlockViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    @IBOutlet weak var CheckingLabel: UILabel!
    @IBOutlet weak var FreePicker: UIPickerView!
    var selected = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    let freeBlocks = ["A", "B", "C", "D", "E","F", "G"]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return freeBlocks[row]
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return freeBlocks.count
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        selected = freeBlocks[row]
        print(selected)
    }
    /*
    func find(value searchValue: String, in array: [String]) -> Int?
    {
        for (index, value) in array.enumerated()
        {
            if value == searchValue {
                return index
            }
        }
        
        return nil
    }
    */


    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        
        // get a reference to the second view controller
        let secondViewController = segue.destination as! CounselorsTableViewController
        
        // set a variable in the second view controller with the String to pass
        secondViewController.freeBlock = selected
    }
    

}
