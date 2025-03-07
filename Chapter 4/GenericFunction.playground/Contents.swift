import Cocoa

func swapInts(a: inout Int,b: inout Int) {
    let tmp = a
    a = b
    b = tmp
}
func swapDoubles(a: inout Double,b: inout Double) {
    let tmp = a
    a = b
    b = tmp
}
func swapStrings(a: inout String, b: inout String) {
    let tmp = a
    a = b
    b = tmp
}

func swapGeneric<T>(a: inout T, b: inout T) {
    let tmp = a
    a = b
    b = tmp
}

func testSwap() {
    var a = 5
    var b = 10
    swapGeneric(a: &a, b: &b)
    print("a:\(a) b:\(b)")
    
    
    var c = "My String 1"
    var d = "My String 2"
    swapGeneric(a: &c, b: &d)
    print("c:\(c) d:\(d)")

}

func testGenericComparable<T: Comparable>(a: T, b: T) -> Bool{
   a == b
}


testSwap()

// overloading with generics
func swap(a: inout Int, b: inout Int) {
    (b, a) = (a, b)
}

func swap(a: inout String, b: inout String) {
    (b, a) = (a, b)
}

func swap<T>(a: inout T, b: inout T) {
    (b, a) = (a, b)
}

var a = "1"
var b = "2"
print("a = \(a), b = \(b)")
swap(a: &a, b: &b)
print("a = \(a), b = \(b)")
