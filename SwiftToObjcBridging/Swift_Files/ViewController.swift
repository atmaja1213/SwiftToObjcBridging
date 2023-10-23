//
//  ViewController.swift
//  SwiftToObjcBridging
//
//  Created by Atmaja on 23/10/23.
//  Copyright © 2023 Atmaja. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var doubledArray:[Float] = [Float]()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        self.doubledArray = self.callObjcClass(inputArray:[1,2,3,4,5])
        print("Here is the doubled array: \(doubledArray)")
        self.doubledArray.removeAll()
        
    }
    
    public func callObjcClass(inputArray:[Float])-> [Float] {
        
        var resultArray:[Float] = [Float]()
        var inputFloatArray = inputArray
        let instanceOfObjc:DoubleArrayElement = DoubleArrayElement()
        let newArray = instanceOfObjc.transFormElements(&inputFloatArray)
        if let outputArray = newArray {
            for index in 0 ..< inputFloatArray.count {
                resultArray.append(outputArray[index] as! Float)
            }
        }
        return resultArray
        
        
    }
    
    
}

