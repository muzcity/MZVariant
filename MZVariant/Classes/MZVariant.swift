//
//  MZVariant.swift
//  MZVariant
//
//  Created by muzcity on 2017. 3. 5..
//  Copyright © 2017년 muzcity. All rights reserved.
//

import Foundation

//In order to use it for custom classes and structures, MZVariable protocol must be inherited.
public protocol MZVariantSupportable {
}


// It supports basic types (ex : Int, String...) and types that inherit from MZVariantable.
public struct MZVariant : CustomStringConvertible {
    
    private var anyValue : Any?
    public var description : String {
        return "\(anyValue)"
    }
    
    public init(_ value:Any) {
        self.anyValue = value
    }
    
    // getter.
    public func value<T>(type:T.Type) -> T? {
        
        if let _ = self.anyValue as? T {
            return self.anyValue as? T
        }
        
        return nil
    }

    // setter. - You can't assignment other type.
    mutating public func setValue<T>(value:T) -> Bool {

        if isInner(value: value) {
            
            self.anyValue = value
            
            return true
        }
        
        return false
    }
    
    private func isInner<T>(value:T) -> Bool {
        return self.anyValue is T
    }
    
    public func isIncludedType<T>(value:T.Type) -> Bool {
        return self.anyValue is T
    }

}
