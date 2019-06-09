設計與繪圖
===


零組件尺寸分析
---

一、球場分析
球場尺寸依照網頁上的進行設計。

![球場分析1][siteAA]

[siteAA]: ./images/official-foosball-table-dimensions.jpg {#fig:駱駝 }

而球場高度的部分，以模擬時方便看到球移動為優先考量，取適當高度即可。

![球場分析2][siteAB]

[siteAB]: ./images/chrome_8xxV6ukHaq.png {#fig:駱駝 }

場地變更設計:進行模擬程式時，發現到當球滾到場地角落時，足球員將無法再次擊球，因此參考現實中，足球比賽中所謂的角球的概念將場地邊更成四個角落皆為斜坡，如下圖。

![球場分析3][siteAC]

[siteAC]: ./images/0808080.png {#fig:駱駝 }

二、球員分析
同樣依照網站上所給隻尺寸進行繪製的動作。

![球員分析1][playerAA]

[playerAA]: ./images/foosball_player_dimension.jpg {#fig:駱駝 }

但由於模擬時，發現球員尺寸會造成兩根桿子平行，球員互相撞擊的部分，因此做了外型上的更改。

![球員分析2][playerAB]

[playerAB]: ./images/chrome_mnNsNoqCYo.png {#fig:駱駝 }

三、桿子分析
桿子我們設定的長度為80in，由於模擬時可能會發生桿子太短，而晃動的情況發生，所以設計長一點來防止這種情況。

![桿子分析][PoleAA]

[PoleAA]: ./images/chrome_YlMtfyhoy0.png {#fig:駱駝 }

四、軌道分析
球進球門後，我們製作一個斜坡讓球能夠停一個角落，等待送球機構把球送到另一個軌道；我們是利用斜坡與重力來運送球。

![軌道分析1][trackAA]

[trackAA]: ./images/球門.png {#fig:駱駝 }

![軌道分析2][trackAB]

[trackAB]: ./images/球門側視圖.png {#fig:駱駝 }

在這個轉角處的時候，有時候球會卡住，所以在角落處設計一個擋板，這樣能夠確保球不會卡住在這個角落，利用重力能夠繼續滾動。

![軌道分析3][trackAC]

[trackAC]: ./images/縫隙.png {#fig:駱駝 }

![軌道分析4][trackAD]

[trackAD]: ./images/軌道.png {#fig:駱駝 }

這個孔是將球送回球場，出球孔提高是因為怕球會滾回去而提高的，不會這個孔而影響球的滾動路徑。

![軌道分析5][trackAE]

[trackAE]: ./images/軌道進球場.png {#fig:駱駝 }

五、成品分析
目前依照前面所設計的圖形，將所有零件組裝完成。

![成品][productAA]

[productAA]: ./images/chrome_8NEqd8EvlG.png {#fig:駱駝 }

參數設計與繪圖
---

一、球檯

![球檯][TableBA]

[TableBA]: ./images/球檯.png {#fig:駱駝 }

二、球門與軌道

![球門與軌道圖1][goalBA]

[goalBA]: ./images/軌道.png {#fig:駱駝 }

![球門與軌道2][goalBB]

[goalBB]: ./images/球門側視圖.png {#fig:駱駝 }

![球門與軌道圖3][goalBC]

[goalBC]: ./images/球門.png {#fig:駱駝 }

![球門與軌道圖4][goalBD]

[goalBD]: ./images/縫隙.png {#fig:駱駝 }

三、球員

![球員圖][playerBA]

[playerBA]: ./images/球員.png {#fig:駱駝 }

四、桿子

![桿子圖][PoleBA]

[PoleBA]: ./images/球桿.png {#fig:駱駝 }

五、送球機構

![送球機構圖][GoBA]

[GoBA]: ./images/送球到高處.png {#fig:駱駝 }

六、組合

![組合圖][組合combinationBA]

[combinationBA]: ./images/組合件.png {#fig:駱駝 }

細部設計與 BOM
---

一、工程圖
1.球場

![球場工程圖][siteCA]

[siteCA]: ./images/球場工程圖.jpg {#fig:駱駝 }

2.桿子

![桿子工程圖][PoleCA]

[PoleCA]: ./images/桿子工程圖.jpg {#fig:駱駝 }

3.球員

![球員工程圖][playerCA]

[playerCA]: ./images/球員工程圖.jpg {#fig:駱駝 }

4.送球機構支撐架

![送球機構支撐架工程圖][SupportCA]

[SupportCA]: ./images/送球機構支撐架.jpg {#fig:駱駝 }

5.大風車

![大風車工程圖][windmillCA]

[windmilltCA]: ./images/風車工程圖.jpg {#fig:駱駝 }

二、爆炸圖
![爆炸圖][BOM]

[BOM]: ./images/爆炸圖.jpg {#fig:駱駝 }
