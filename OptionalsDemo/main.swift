//
//  main.swift
//  OptionalsDemo
//
//  Created by Jose Michael Rubio on 6/4/24.
//

import Foundation

// ? =  Declares it is an optional, but it is not a String DataType. it is a Optional-String DataType
let myOptional: String?

// (1) Force Unwrap: //
// ! = force unwraps it, meaning we know (the Humans) that there will never be a chance that a nil value will be in myOptional. However, if there is a nil value, it will crash at runtime.
myOptional = nil
let text: String = myOptional!

// (2) Check for nil Value //
// This will prevent a runtime crash
if myOptional != nil{
    let text2: String = myOptional!
    let text3: String = myOptional!
    // But, we still have to force unwrap the optional if we want to use it as the intended DataType
} else{
    print("myOptional was found to be nil")
}

// (3) Optional Binding //
// the (2) is so common that swift has functionality, a better way to not always having to force unwrap
myOptional = "Jose"
if let safeOptional = myOptional {
    let text2: String = safeOptional
    print(safeOptional)
} else {
    print("myOptional was found to be nil")
}

// (4) Nil Coalescing Operator //
// ?? provide a default value if an optional is equal to nil
myOptional = nil
let text4: String = myOptional ?? "I am the default value"
print(text4)

// OTHER: case if optional is a struct or class: //
struct MyOptionalStruct {
    var property = 123
    func method() {
        print(" I am the Struct's method")
    }
}
let myOptional: MyOptionalStruct?
// this initalizes the optional struc:
myOptional = MyOptionalStruct()

// (5) Optional Chaining //
// prevents app from crashing but myOptional is not equal to anything
let myOptional: MyOptionalStruct?
myOptional = nil
print(myOptional?.property)


