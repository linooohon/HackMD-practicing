# Swift 基本認識筆記 

### 型別標註 (type annotation)：
* var 變數 
* let 常數 
### 整數：Int
整數(Int)指的是沒有小數點的數字，可以有符號 (正、負、零)或是無符號 (正、零)

```swift
var number: Int //宣告一個整數變數
let str: String = "It is a string ." // 宣告一個字串常數

//通常很少需要寫型別標註，如果在宣告時給了一個初始值， Swift 則會自動推斷出型別。
```
### 浮點數
* Float：6位數
* Double：15位數

```swift
let piValue = 3.1415926
var height = 178.25
// 宣告浮點數時 如果沒有型別標註 通常會將他判斷為 Double 

let oneHeight = 165.25 // 型別為 Double
let anotherHeight: Float = 175.5 // 除非型別標註填寫為 Float
```
### 整數＆浮點數轉換
整數和浮點數的轉換必須指定型別。例子如下：
```swift
// 型別為整數 Int
let number1 = 3

// 型別為浮點數 Double
let number2 = 0.1415926

// 相加前 需要將 Int 轉換成 Double 否則會報錯誤
let pi = Double(number1) + number2

// 這個值的型別也就是 Double
// 印出：3.1415926
print(pi)
```
也可以將浮點數轉換成整數，但小數點後的數字就會被截斷：

```swift
let integerPi = Int(pi)

// 型別為 Int 小數點後的數字被截斷
// 所以只會印出：3
print(integerPi)
```

### 字元及字串
* 字元(character):依照編碼格式的一個位元組(像是一個英文字母、數字或符號)
* 字串(string):有序的字元集合(一段文字)
   * ##### "都是以雙引號包起來" #####

```swift
// 宣告字串時 不論字數多少 都會判斷為 String
let str1 = "It is a string ." // 型別為 String
let str2 = "b" // 型別仍然是 String
let str3: Character = "c" // 除非型別標註填寫為 Character
```

### 元組

### 型別別名

### 可選型別

### 強制解析

### 隱式解析可選型別


### 存取與修改陣列

```swift
var arr4 = ["Apples", "Eggs", "Milk", "Rice", "Water"]
// 要修改一個索引值對應的值 直接將其指派新的值就可以了
arr4[2] = "Oranges"
// 這時已將 Milk 改成 Oranges 所以會印出：Oranges
print(arr4[2])

// 如果要修改一個區間內的值 可以使用區間寫法修改
arr4[1...4] = ["Milk"]
// 這樣會將原本索引值 1 到 4 的值修改成 Milk
// 所以現在 arr4 會變成 ["Apples", "Milk"]
print(arr4)
```

* 屬性 `count` ：表示陣列內值的數量
* 屬性 `isEmpty` : 檢查陣列內是否有值，並返回一個布林值
* 加入或移除陣列內的值：

```
// 使用 append(_:) 方法來加入新的值
var arr6 = ["Apples", "Eggs"]
arr6.append("Milk") // 加入新的值 順序會在最後一個
// 現在 arr6 會變成 ["Apples", "Eggs", "Milk"]

// 如果要選擇加入的索引值的位置 使用 insert(_:atIndex:) 方法
// arr6.insert(要加入的值, atIndex:要加入的索引值位置)
arr6.insert("Rice" ,atIndex:0 )
// 現在 arr6 會變成 ["Rice" ,"Apples", "Eggs", "Milk"]
// 所有索引值在後面的都會順延往後一個位置

// 移除一個索引位置的值 使用 removeAtIndex(_:) 方法
arr6.removeAtIndex(1) // 將排在第二個的 Apples 移除
// 所有後面的值都會遞補向前一個位置
// 現在 arr6 會變成 ["Rice", "Eggs", "Milk"]

// 或者是移除最後一個值 使用 removeLast() 方法
arr6.removeLast()
// 現在 arr6 會變成 ["Rice", "Eggs"]
```

* 用 for in 列印：
```
var arr7 = ["Rice" ,"Apples", "Eggs", "Milk"]
for item in arr7 {
    print(item)
}
// 會依序印出：
// Rice
// Apples
// Eggs
// Milk

// 當你同時也需要獲得陣列值時 可以使用 enumerate() 方法
for (index, value) in arr7.enumerate() {
    print("Item \(index + 1): \(value)")
}
// 會依序印出：
// Item 1: Rice
// Item 2: Apples
// Item 3: Eggs
// Item 4: Milk
```
