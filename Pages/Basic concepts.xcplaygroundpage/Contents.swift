import UIKit
print("--------------- Declare variables --------------")
var userName = "Allen" //mutuable variable type String
var userCity = "Mumbai"
var salary : Float = 26000.46
print(userName , salary)
userName = "John"          //chnage value of username = Allen -> John
print(userName)
let instituteName = "Bridgelabz"    //immutable variable type, let keyword used for declare vraiable as constant.
let location      = "Maharashtra"
print(instituteName , location)
//instituteName = "SPPU"            //cannot reassign value for let variable it works as final



print("--------- guard ---------------------------")

var oldage = [23,25,27,29,32]
func oldestage() {
    guard let oldestage = oldage.last else {
        return
    }
    print("\(oldestage) is oldest age")
}
oldestage()
print("-------------------if else ------------")

var number : Int = 2
var number1 : Int = 4

if number == number1 {
    print("Numbers are equal.")
} else {
    print("Numbers are not equals.  ")
}



print("---------------- For in ----------------------")
//Using for in to print random array element with range of 0-9
var randomInts : [Int] = []
for _ in 0..<9{
    let randomNumber = Int.random(in: 0...9)
    randomInts.append(randomNumber)
    
}
print(randomInts)

print("---------- Switch case ------------------------")
let matchRank = 67
func determineRank(from rank : Int) {
    switch rank {
    case 0 :
        print("Playing game to determine rank")
    case 1..<50 :
        print("You are in bronze")
    case 50..<100 :
        print("you are in silver")
    default :
        print("you are win the match but we dont know what is your status rank")
    }
}
determineRank(from: matchRank)
print("------------ enum example ----------------------")
enum Phone {
    case iPhone11Pro
    case iPhoneSE
}
func getPhoneDetail(on phone : Phone) {
    if phone == .iPhone11Pro {
        print("This is new phone")
    } else if phone == .iPhoneSE {
        print("This is old phone")
    } else {
        print("Get new phone")
    }
}
getPhoneDetail(on: .iPhoneSE)
getPhoneDetail(on: .iPhone11Pro)

print("------------enum example2 ----------------------")

enum Mobile : String {
    case samsung = "This is new phne"
    case nokia = "this is old phone"
}
func getMobile(on mobile : Mobile) {
    print(mobile.rawValue)
}
getMobile(on: .nokia)

print("------- Array ----------------------------------")
//Array contains duplicate value

var age : [Int] = []
var ages = [24,26,27,19]
print(ages.count)
print(ages.first!)
print(ages.last!)
ages.append(31)
print(ages)

print("----------- Set --------------------------------")
//set does not contains duplicate values

var numbers = [2,4,6,2,7,8,4,3,9]
var finalNumber = Set(numbers)
print(numbers)

print("----------- Fuctions ---------------------------")

func getAddNumber (firstNumber : Int , to secondNumber : Int) -> Int{
        let sum = firstNumber + secondNumber
    return sum
}
print(getAddNumber(firstNumber: 23, to: 12))

print("-----------------  static --------------------")

struct User {
    static var creator = "Sean"
    var vTitle : String
}
let iOS : User = User(vTitle: "iOS videos")
let java : User = User(vTitle: "Java videos")
let python : User = User(vTitle: "Python videos")
print(java.vTitle)
print(iOS.vTitle)
print(User.creator)
print(python.vTitle)
///--------------------------------------------------------
