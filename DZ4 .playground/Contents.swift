import UIKit
enum VolvoMod {
    case xc90
    case s40
    case s50
    case s60
    case fh12
    case fh13
}
enum DriveUnit {
    case front
    case rear
    case all
    
}
class Volvo {
    let carModel:VolvoMod
    let god:Int
    let colorCar:UIColor
    let driveUnit:DriveUnit
    static var carCount = 0
    init(carModel: VolvoMod, god: Int, colorCar: UIColor, driveUnit: DriveUnit) {
        self.carModel = carModel
        self.god = god
        self.colorCar = colorCar
        self.driveUnit = driveUnit
        Volvo.carCount += 1
    }
    func carApp (){
    }
    }
class VolvoTrack: Volvo {
    var load:Int
    init( carModel: VolvoMod, god: Int, colorCar: UIColor, driveUnit: DriveUnit, load: Int) {
        self.load = load
        super.init(carModel: carModel, god: god, colorCar: colorCar, driveUnit: driveUnit)
    }
    override func carApp() {
        switch load {
        case 0...999:
            print("Производится загрука прицепа")
        case 1000:
            print("загрузка завершена, готов к рейсу.")
        default:
            print("Перегруз! уберите лишнюю массу!")
        }
    }
}

class VolvoCar: Volvo {
    var panoramView: Bool
    var autoStart: Bool
    init( carModel: VolvoMod, god: Int, colorCar: UIColor, driveUnit: DriveUnit, panoramView: Bool, autoStart: Bool) {
        self.panoramView = panoramView
        self.autoStart = autoStart
        super.init(carModel: carModel, god: god, colorCar: colorCar, driveUnit: driveUnit)
    }
    override func carApp() {
        if (autoStart == true) {
            print("Производится запуск двигателя")
        } else {
            print("Производится остановка двигателя")
        }
    }
}
var volvofh12 = VolvoTrack(carModel: .fh12, god: 1990, colorCar: .black, driveUnit: .rear, load: 1000)
var volvoxc90 = VolvoCar(carModel: .xc90, god: 2005, colorCar: .brown, driveUnit: .all, panoramView: true, autoStart: true)
volvoxc90.autoStart = true
volvoxc90.carApp()
volvofh12.load = 1000
volvofh12.carApp()
