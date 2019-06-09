設計與繪圖
===


零組件尺寸分析
---

一、球場分析
球場尺寸依照網頁上的進行設計
.//images/official-foosball-table-dimensions.jpg
而球場高度的部分，以模擬時方便看到球移動為優先考量，取適當高度即可。
.//images/chrome_8xxV6ukHaq.png

場地變更設計:進行模擬程式時，發現到當球滾到場地角落時，足球員將無法再次擊球，因此參考現實中，足球比賽中所謂的角球的概念將場地邊更成四個角落皆為斜坡，如下圖
.//images/0808080.png

二、球員分析
同樣依照網站上所給隻尺寸進行繪製的動作
.//images/foosball_player_dimension.jpg
但由於模擬時，發現球員尺寸會造成兩根桿子平行，球員互相撞擊的部分，因此做了外型上的更改。
.//images/chrome_mnNsNoqCYo.png

三、桿子分析
桿子我們設定的長度為80in，由於模擬時可能會發生桿子太短，而晃動的情況發生，所以設計長一點來防止這種情況
.//images/chrome_YlMtfyhoy0.png

四、軌道分析
球進球門後，我們製作一個斜坡讓球能夠停一個角落，等待送球機構把球送到另一個軌道；我們是利用斜坡與重力來運送球。
.//images/球門.png
.//images/球門側視圖.png
在這個轉角處的時候，有時候球會卡住，所以在角落處設計一個擋板，這樣能夠確保球不會卡住在這個角落，利用重力能夠繼續滾動。
.//images/縫隙.png
.//images/軌道.png
這個孔是將球送回球場，出球孔提高是因為怕球會滾回去而提高的，不會這個孔而影響球的滾動路徑。
.//images/軌道進球場.png

五、成品分析
目前依照前面所設計的圖形，將所有零件組裝完成。
.//images/chrome_8NEqd8EvlG.png

參數設計與繪圖
---

一、球檯
.//images/球檯.png

二、球門與軌道
/images/軌道.png
/images/球門側視圖.png
.//images/球門.png
.//images/縫隙.png

三、球員
.//images/球員.png

四、桿子
.//images/球桿.png

五、送球機構
.//images/送球到高處.png

六、組合
.//images/組合件.png

細部設計與 BOM
---

一、工程圖
1.球場
.//images/球場工程圖.jpg
2.桿子
.//images/桿子工程圖.jpg
3.球員
.//images/球員工程圖.jpg
4.送球機構支撐架
.//images/送球機構支撐架.jpg
5.大風車
.//images/風車工程圖.jpg
