import UIKit
//задача1
func chet (i:Int) {
    if (i%2 == 0) {
        print("число четное")
    }
    else { print ("число не четное")
    }
    
}

chet(i: 8)
//задача2
func delen (k:Int) {
    if (k%3 == 0) {
        print("число делится на три без остатка")
    }
    else { print ("число не делится на три без остатка")
    }
}
delen(k:7)
//задача3
var arr:[Int] = []
var n = 0
while (arr.count<=99){
    arr.append(n+1)
    n=n+1
}
print(arr)
//задача4
func zad ()->[Int] {
    var arr:[Int] = []
    var n = 0
    while (arr.count<=99){
        arr.append(n+1)
        n=n+1
    }
    var i = 0
    while i <= arr.count-1 {
        if arr[i]%2==0 || arr[i]%3==0 {
            arr.remove(at: i)
        }
    i += 1
     }
     return arr
    }

var s = zad ()
print (s)
//задача4
func fib (h:Int)->[Int]{
    var dan:[Int] = [1,1]
    var t = 0
    var g = 0
    while ( dan.count <= h ) {
        t = dan[g] + dan[g+1]
        dan.append(t)
        g += 1
        
    }
    return dan
}
   print (fib(h:10))



