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

```swift
func nameOfFunciton(//這裡放parameter) {
//這裡是block of funciton，用來敘述這個 func 的內容，但注意不是執行，唯有 call 時，才會執行敘述
}

nameOfFunction(parameter) // call，這一行才是使 func 執行的關鍵
```

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

- 舉例，假設今天要製造一個小費產生器，大概用 function 的邏輯列一下：來看 print 和 return 的基本使用差別，其實 return 就是可以接著用來做其他事， print 就是單純印出

![](https://i.imgur.com/ZO9cDX3.png)

```swift
var amount = 120
var personCount = 2

func calculateATip(amount: Double) {
    let tip = amount * 10 / 100   // 假設是給 10% 小費
    print(tip)  //這裡如果只需要印出來的話，就直接 print
}

calculateATip(amount: 120)   // 這句呼叫，才能觸發 func calculateATip


// 但如果現在假設要做更多的事情，我們就會用 return，因為 function 一但執行完，值都會消失，
// 必須給 return，以便於接下來繼續做使用

func calculateATipWithAReturn(amount: Double) -> Double {
    let tip = amount * 20 / 100  // 假設是給 20% 小費
    return tip    //所以在這裡給了 return
}

let tip = calculateATipWithAReturn(amount: 120) // 這行很關鍵，我們必須做一樣的事情呼叫


func showTipOnLabel(tip: Double) {
    print("you have to pay \(tip)")
}

showTipOnLabel(tip: tip)
```

- ## function 概念補充

1. 例子 
![](https://i.imgur.com/Rm6R5Is.png)
```swift
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
但第二個 secondMessage(msg: "I'm good") 去 call func secondMessage 時，block of func 跑得是再 call 一次 func message，
所以也確實有 print，也確實有 return值，但這都在 block 裡，
因為 func secondMessage 沒有定義 return值，所以會忽略掉 message(msg: msg) 回傳的值
*/
```

2. 可變參數：

```swift
//參考資料的舉例
func isNumber(numbers:Int...) -> Int {
    var total = 0
    for number in numbers {
        total += number
    }
    return total * numbers.count
}
isNumber(numbers: 1, 2, 3, 4, 5)  // return 75  : 全部加起來 * 5(五個數)
```

3. 如果希望函式裡修改參數的值，則藉由 inout 可以在函式呼叫後，修改的值仍然存在

```swift
func swapTwoInts(_ a: inout Int, _ b: inout Int) {
    let temporaryA = a
    a = b
    b = temporaryA
}

var a = 10
var b = 20
swapTwoInts(&a, &b)  //這裡要記得加 &
print(a, b)

// 但要注意這個和 return 是不同的，這裡只是一種方法在 func 外能夠產生效果
```

4. 默認下，使用參數名字為參數標籤，而如果函式加入參數標籤後，之後可藉由參數標籤呼叫`dance(play:)`，可用在便於理解時使用
```swift
func dance(play music: String) {
    print("Let's get down with \(music)")
}

dance(play: "Old School Fuck")
```

- 省略參數標籤的話：要記得下底線
- 有默認參數的話：要記得沒有默認的參數要放前面
- 函式也可以有多個回傳值
- 用 optional 來避免回傳可能是空值而報錯，這樣是空值就會回傳 nil
>(Int?, Int?) 與 (Int, Int)? 兩者是不同的， (Int, Int)? 是整個元組為可選的，而不僅僅是元組中的單個值。
