# Swift5 Programming Bootcamp For Beginners



- quotation 引號括號


## 第二節：

#### 1. var let 區別

   - var 可變
 > var highScore = 0
 highScore = 10
 highScore = 20
               
   - let 不可變
   
  > let websiteUrl =  "www.website.com"
   websiteUrl = "www.newWebsite.com" -> FAIL, ERROR NOT POSSIBLE


#### 2. data type: specifies the type of information in a variable / constant
   - `var number: Int = 1000` 
   -  Int -> 數字 
   -  Double or Float -> decimal number 有小數點的
   -  String -> 字串，一般會用引號(quotation)括起來
   
- 有數千種不同的 data types，下面還有一些例子
  1. `let onlyANumber : Int` 
  2. `var onlyADecial Number : Double` 
  3. `var onlyAText : String` 
  4. `let onlyAButton : UIButton`
  5. `var onlyALabel : UILabel`
  6. `let onlyAImage : UIImage`
  
  Int -> Numbers like 9
  Double -> Numbers like 20.9
  String -> Text like "Hi I'm a text"
  UIButton -> A Button where you can click like Login Button in most Apps
  UILabel -> A normal label, you find this in every App
  UIImage -> A Image, like you profilImage in a social App
#### 3. type inference: Swift 獨有的特性
- swift automatically recognizes the data type from the assignment
(swift 會自動判別所給的是什麼樣的型別)
(所以大部分時候不需再給 data types，swift 會自動判別)
>var value = 9 
// Swift 自動知道是 Int 因為給 9
var value2 = 20.9 
// Swift 自動知道是 Double 因為給 20.9
var value3 = "Text" 
// Swift 自動知道是 String 因為給 quotation marks " " 就會是 String

#### 4. 基本觀念

- variable name can only appear once -> can't use variable / constant name twice
(變數名稱用過就不能再用了)
- use camelCase Notation 
(用駝峰式寫法，名稱第一個詞第一個字是小寫，之後從第二個詞開始的每個詞的第一個字要大寫)
  - ex: `let backGroundColor = "red"`



## 第四節： function
範例：
```swift
func checkLogin(email: String, password: String) { // String -> the data type for text
     print("Check the login")
     if email == "pin@gmail.com" && password == "1234" {
         print("Login")
     } else {
         print("Email or password are wrong")
     }
}

checkLogin(email: "pin@gmail.com", password: "1234")
```


什麼是 funciton：a function always have a task / job
(function 永遠都有任務)

function 的結構：
![](https://i.imgur.com/OvnaIdt.png)


>func nameOfFunciton(//parameter) {
//block of funciton
}


- function 的名字也和 var 和 let 一樣，不能重複 
- 每次 function 都只是敘述，如果要執行 function，必須呼叫，呼叫一次就執行一次
```swift
func bakePizza() {
  print("Pizza with salami and cheese")
}

bakePizza()  // 這裡就是呼叫，而程式在執行時，就會因為這個呼叫而執行上面 block of function 的內容
// 而根據這個舉例的 function，就會印出字串"Pizza with salami and cheese" 呼叫一次，就執行一次，如果沒有呼叫，就不會印出
```

- ### function 的形式： 
   - function 沒 parameter參數, no return
   ```swift
   func bakePizza() {
   print("Pizza with salami and cheese")
   }
   bakePizza()
   ```
   >沒 return，所以就是呼叫後就執行 function 敘述，然後結束。
   
   - function 有 parameter參數, no return
   ```swift
   func bakePizza(ingredient1: String, ingredient2: String) {
   print("Pizza with \(ingredient1) and \(ingredient2)") 
   }
   bakePizza(ingredient1: "tuna", ingredient2: "cheese")
   bakePizza(ingredient1: "mushrooms", ingredient2: "cheese") 
   ```
   >沒 return，所以就是呼叫後就執行 function 敘述，然後結束。
   - ### function 有 parameter參數, 有 return
   ```swift
   func bakePizza(ingredient1: String, ingredient2: String, ingredient3: String) -> String {
   return "Pizza with \(ingredient1) and \(ingredient2) and \(ingredient3)"
   }
   var pizza = bakePizza(ingredient1: "tuna", ingredient2: "cheese", ingredient3: "corn")
   print(pizza)
   
   // 而這裡的結果也是會印出 `Pizza with tuna and cheese and corn`
   ```
  >有 return 
  >所以為什麼要用 return 呢？ 
  >after the job / task, give me something back, because I need it for something else
  >在執行完 function 的敘述後，把什麼東西拿回來給我，因為我需要那個東西去做別得事情

- 舉例，假設今天要製造一個小費產生器，大概用 function 的邏輯列一下：

![](https://i.imgur.com/ZO9cDX3.png)

```swift
var amount = 120
var personCount = 2

func calculateATip(amount: Double) {
    let tip = amount * 10 / 100   // 假設是給 10% 小費
    print(tip)
}

calculateATip(amount: 120)

func calculateATipWithAReturn(amount: Double) -> Double {
    let tip = amount * 20 / 100  // 假設是給 20% 小費
    return tip
}

let tip = calculateATipWithAReturn(amount: 120)


func showTipOnLabel(tip: Double) {
    print("you have to pay \(tip)")
}

showTipOnLabel(tip: tip)

