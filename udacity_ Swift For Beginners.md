# udacity: Swift For Beginners

- #### interpolation: 添寫、插入、竄改
- #### Concatenation: 連續、連鎖
- #### String manipulation: String 的運用操作：
像是： interpolation, concatenation, 或是利用 string function
- ### String interpolation: 有點像是字串的插入方法
  - ![](https://i.imgur.com/YWkEhUQ.png)

  - ```swift
    // Convert 567 to $5.67
    let numOfPennies = 567
    let dollarInt = numOfPennies/100
    let dollarsAndCentsString = "$\(dollarInt).\(numOfPennies % 100)"     
    ```

- ### String concatenation: 
  - ![](https://i.imgur.com/0b2lTRD.png) 
  - ```swift
    let monkeyString = "I saw a monkey."
    let thiefString = "He stole my iPhone."
    var sillyMonkeyString = monkeyString + " " + thiefString

    ```

- ### 一些 string function 的運用方法：

#### 1. 在 string 裡找 substring
 
- ![](https://i.imgur.com/IlZHqbK.png)
- ```swift
  let monkeyString = "I saw a monkey."
  let thiefString = "He stole my iPhone."
  var sillyMonkeyString = monkeyString + " " + thiefString
  sillyMonkeyString.contains("key")
  
  //會 return true 因為有包含 key 字串
   
  ```
 
#### 2. string 置換： 

- ![](https://i.imgur.com/394OqpV.png)
- ```swift
  let password = "Meet me in St. Louis"
  let newPassword = password.replacingOccurrences(of: "e", with: "3")
 
  // 會 return "M33t m3 in St. Louis"
  
  ```

#### 3. 迴圈 + reversed 舉例：

```swift
var forwardString = "time"
var charactersReversed = forwardString.characters.reversed()

// 被反轉了，然後現在把字串印出
for character in charactersReversed {
    print ("\(character)")
}
```
印出 -> ![](https://i.imgur.com/ypnDYyn.png) // 它會一個一個印出


["這裡有更多 string function 的用法"](https://developer.apple.com/documentation/swift/string#//apple_ref/doc/uid/TP40015181-CH1-DontLinkElementID_32)


- ### 關於 Parameters 和 Arguments
```swift
let jarrod  = "Jarrod"

func sayHelloToStudent(student: String) {
    print("Hello, \(student)!")
}

sayHelloToStudent(student: jarrod)

```
>一開始 `func sayHelloToStudent(student: String)` 定義的是 Parameters，
而在 call function 時 sayHelloToStudent(student: jarrod)，才是 Arguments。


