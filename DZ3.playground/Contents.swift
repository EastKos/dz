import UIKit
enum model {
    case toyota, honda, nissan, hunday, kia, jeep
}
enum winopen {
    case open, close
}
enum eng {
    case start, stop
}
enum modtruck {
    case man, volvo, goldeneagle, ford, kamaz, madtrack
}
struct car {
    let mod: model
    let color: UIColor
    let iss: Int
    var lift: Int {
        didSet {
            if ( self.lift >= 1000) {
              print( "уменьшите массу перевозимого груза на \(lift - 1000)")
            }
            else {
                print("до предельной массы груза осталось \(1000 - lift)")
            }
    }
    }
    let vol: Int
    var prob: Int
    var engine: eng
    var winpos: winopen
    var zapoln: Int{
        didSet {
        var volrem = self.vol - self.zapoln
            print ("остаток объема багажника \(volrem)")
        }
    }
    
}
var car1 = car(mod: .honda, color:.black, iss: 1999, lift: 1000, vol: 450, prob: 220000, engine: .start, winpos: .close, zapoln: 0)
car1.zapoln = 50
car1.lift = 500
print(car1.mod)
//
struct truck {
    let mod: modtruck
    let color: UIColor
    let iss: Int
    let lift: Int
    var wag: Bool
    var prob: Int
    var engine: eng {
        willSet {
            if (newValue == .start) {
                print("Внимание! Производится запуск двигателя.")
            }
            else {
                print("Внимание! Двигатель остановлен.")
            }
        }
}
}
var madman = truck(mod: .madtrack, color: .brown, iss: 2010, lift: 10000, wag: true, prob: 200000, engine: .stop)
madman.engine = .start
madman.wag = false
