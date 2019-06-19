//
//  main.swift
//  closureSwift
//
//  Created by MacStudent on 2019-06-19.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation

func add(a : Int, b : Int) -> Int
{
    return a + b
}


func subtract(a:Int, b : Int)->Int
{
    return a - b
}


let c = add(a: 10, b: 20)
print("c:\(c)")

var funcAdd : (Int, Int) -> Int
funcAdd =  add(a:b:)

let cc = funcAdd(100, 200)
print("cc : \(cc)")


let funcSub = subtract(a:b:)
let ss = funcSub(200,100)

print("s:\(ss)")



var mul = {
    (a:Int, b :Int)->Int in
    return a*b
}
let m = mul(10,20)
print("m\(m)")


funcAdd = mul
print ("mul : \(funcAdd(2,5))")


let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
func backward(_ s1: String, _ s2: String) -> Bool {
    return s1 > s2
}
var reversedNames = names.sorted(by: backward)
// reversedNames is equal to ["Ewa", "Daniella", "Chris", "Barry", "Alex"]
print(names)
var reversedNAmes = names.sorted(by : backward)
print(reversedNAmes)

reversedNAmes = names.sorted(by:
    {
        (a:String, b : String)-> Bool in
        return a > b
})
print(reversedNAmes)


reversedNAmes = names.sorted(by:
    {
        
        return $0 > $1
})
print(reversedNAmes)

reversedNAmes = names.sorted(by:
    {
        
        $0 > $1
})
print(reversedNAmes)


reversedNAmes = names.sorted(by: >)
print(reversedNAmes)


reversedNAmes = names.sorted(by: <)
print(reversedNAmes)
