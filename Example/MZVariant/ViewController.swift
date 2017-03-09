//
//  ViewController.swift
//  MZVariant
//
//  Created by muzcity on 03/09/2017.
//  Copyright (c) 2017 muzcity. All rights reserved.
//

import UIKit
import MZVariant

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // used for basic type
        var variant = MZVariant("1234")
        let variant1 = MZVariant(98765)
        
        if let value = variant.value(type: String.self) {
            print("\(value)")
        }
        
        if let value = variant1.value(type: Int.self) {
            print("\(value)")
        }
        
        print("\(variant.setValue(value: "5555"))")
        
        // type check function.
        if variant.isIncludedType(value: Int.self) {
            print("inner type is Int")
        }
        else {
            print("inner type is other")
        }
        
        if variant.isIncludedType(value: String.self) {
            print("inner type is String")
        }
        else {
            print("inner type is other")
        }
        
        // used for class
        let c = SomeClass()
        let variant2 = MZVariant(c)
        
        if let value = variant2.value(type: SomeClass.self) {
            print("\(value.num)")
        }
        
        
        // used for dictionary
        var dictionary : [String:MZVariant] = [:]
        
        dictionary["key"] = MZVariant("mzvariant value")
        dictionary["key1"] = MZVariant(123.4567)
        
        
        if let value = dictionary["key"]?.value(type: String.self) {
            print("\(value)")
        }
        
        if let value = dictionary["key1"]?.value(type: Double.self) {
            print("\(value)")
        }

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

