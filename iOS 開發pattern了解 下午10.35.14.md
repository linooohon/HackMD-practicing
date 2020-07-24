# iOS 開發初探 - 


### 1. Dev environment and frameworks:
##### 系統架構分為 4 層，由高到低分別是，
- CoCoa Touch
- Media
- Core Services
- Core OS


![](https://i.imgur.com/l8g2Kqh.png)

最重要的 Foundation Framework 就在 Core Services 這層
而主要的 UIKit 就在最高層 Cocoa Touch

### 2. Applications are a feedback loop:

一個基本的互動建構是 View 與 Model 組成的，

![](https://i.imgur.com/gTkNZ5r.png)



### 3. iOS UI responder chain:
![](https://i.imgur.com/p0qduaO.png)


### 4. Common iOS app architecture pattern:

如果今天需要完成一個 app ，那就會需要了解一個完整開發的 pattern，
才能建立，包括 UI 與 Fundation ，最主要就是要讓 feedback loop 實現
而這之中有一些 pattern 可以了解，

最初的 MVC: Model-View-Controller
![](https://i.imgur.com/lR5wlnd.png)


- Model:負責數據的處理與接收
- View: 屬於展示層，以 iOS 來說 UI 類的基本都在這裡
- Controller: 中間人，像是傳遞的角色，一般來說，當用戶對 View 有操作時，它負責去修改相對應的 Model，而當 Model 的值發生變化時，它負責去更新對應的 View

**但實際上在 apple 開發時，View 與 Controller 會時常是綁在一起形成 Cycle 的**
**所以實際上 MVC 在 iOS 裡的 pattern 會變成:**
![](https://i.imgur.com/4u0IyL9.png)
所以我們似乎可以把 ViewController 視為 View 和 Controller 的混合體


**而一個 UIViewController Lifecycle 是如圖，長這樣：**
![](https://i.imgur.com/v9dCaWL.png)





因為 app 開發的複雜化，而出現其他的 pattern，

像是 MVVM-C : Model-View-ViewModel-Controller
![](https://i.imgur.com/odPV320.png)


還有其他像是 VIPER : View-Interactor-Presenter-Entity-Router
![](https://i.imgur.com/SVKhBjD.png)

<<<<<<< HEAD:iOS 開發pattern了解.md
以及像是 uber 的 RIBs 都是有些微的不一樣
=======
以及像是 uber 的 RIBs
>>>>>>> b463fe092dcc77b38a3ed33bc03ff6f2597dabfd:iOS開發pattern了解.md










