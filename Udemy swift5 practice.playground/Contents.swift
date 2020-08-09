
/*
import UIKit

var str = "Hello, playground"

var number = 1000
var welcome = "Hi, how are you today"
var decimalNumber = 20.45

func bakePizza(ingredient1: String, ingredient2: String, ingredient3: String) -> String {
return "Pizza with \(ingredient1) and \(ingredient2) and \(ingredient3)"
}
var pizza = bakePizza(ingredient1: "tuna", ingredient2: "cheese", ingredient3: "corn")
print(pizza) //而這裡的結果也是會印出 Pizza with tuna and cheese and corn

func calculateATip(amount: Double) -> Double {
    let tip = (amount * 15) / 100
    return tip
}

let calculatedTip = calculateATip(amount: 43)
print(calculatedTip)
*/







/*
var amount = 120

func calculateATip(amount: Double) {
    let tip = amount * 10 / 100   // 假設是給 10% 小費
    print(tip) //這裡如果只需要印出來的話，就直接 print 12.0
}

calculateATip(amount: 120) // 這句呼叫，才能觸發 func calculateATip

// 但如果現在假設要做更多的事情，我們就會用 return，因為 function 一但執行完，值都會消失，
// 必須給 return，以便於接下來繼續做使用

func calculateATipWithAReturn(amount: Double) -> Double {  // -> Double 要記得定義 return值
    let tip = amount * 20 / 100  // 假設是給 20% 小費
    return tip   //所以在這裡給了 return
}

let tip = calculateATipWithAReturn(amount: 120)
// 這行很關鍵，我們必須做一樣的事情呼叫，但是我們再給一個 constant 去延用這個值讓它做其他事


func showTipOnLabel(tip: Double) {
    print("you have to pay \(tip)")
}

showTipOnLabel(tip: tip)  // 延用到這裡，所以最後會 print you have to pay 24.0
*/








/*
func message(msg: String) -> Int {
    print(msg)
    return msg.count
}

func secondMessage(msg: String) {
    message(msg: msg)
}

message(msg: "I'm good")
secondMessage(msg: "I'm good")
*/






/*
func message(msg: String) -> Int {
    print(msg)
    return msg.count
}

func secondMessage(msg: String) {
    message(msg: msg)        // 其實是有 return 8，但因為沒有定義 return值，所以會被忽略掉
}

message(msg: "I'm good")    // 印出 "I'm good" 並 return 8
secondMessage(msg: "I'm good")   // 印出 "I'm good"，但這裡不會 return，就是因為上面沒有定義 return值

/*
這個例子之所以 secondMessage 沒有 return值是因為：
跑得邏輯是，message(msg: "I'm good") 先 call func message，所以會 print，也有 return值，沒有錯
但第二個 secondMessage(msg: "I'm good") 去 call func secondMessage 時，
block of func 跑得是再 call 一次 func message，
所以也確實有 print，也確實有 return值，但這都在 block 裡，
因為 func secondMessage 沒有定義 return值，所以會忽略掉 message(msg: msg) 回傳的值
*/
*/










/*
func isNumber(numbers:Int...) -> Int {
    var total = 0
    for number in numbers {
        total += number
    }
    return total * numbers.count
}
isNumber(numbers: 1, 2, 3, 4, 5)
*/









/*
func swapTwoInts(_ a: inout Int, _ b: inout Int) {
    let temporaryA = a
    a = b
    b = temporaryA
}

var a = 10
var b = 20
swapTwoInts(&a, &b)
print(a, b)
 */











/*
func dance(play music: String) {
    print("Let's get down with \(music)")
}

dance(play: "Old School Fuck")
*/





func checkLogin(email: String, password: String) {  // String -> the data type for text
     print("Check the login")
     if email == "pin@gmail.com" && password == "1234" {
         print("Login")
     } else {
         print("Email or Password are wrong")
     }
}
checkLogin(email: "pin@gmail.com", password: "1234")
