# 靜態網站 Hexo + github 架設

需要：
* node.js
* git
* github
* hexo
* vscode、sublime等等..依使用喜好


安裝 Hexo
`npm install -g hexo-cli`



Terminal 操作
`hexo init hextory`
`cd hexotry`
`hexo server`


改一些東西：

* 改了一開始附的文章的一些內容做練習
* Date.tags.檔名加日期.加了一個google連結.改了標題
* 推薦之後檔名都加日期

> Ctrl C 可以跳出來

---

_config.yml 檔裡改一下：
```
deploy:
  type: git
  repo: git@github.com:linooohon/linooohon.github.io.git
  branch: master
```


---


1. 建立一個新的ssh key
2. 再把ssh key 貼到 github


`hexo g` 靜態網站產生，會出現 public 資料夾

把 public 用 vscode 開起來看一下長怎樣

---

github 上創一個 repo，然後一般版控流程

git init
git add .
git commit
git remote
git push


`hexo d`
顯示
`deployed not found: git`
輸入
`npm install hexo-deployer-git --save`

再輸入 `hexo d` 一次

完成 

---

**後記**：

中間曾經出錯
因為 deploy 裡可以用 https 和 ssh
那時後我用 ssh 結果沒有設定 key，所以不能成功
後來設定之後就可以了！

