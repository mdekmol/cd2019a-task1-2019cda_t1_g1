設計與繪圖
===


設計構想
---

根據本學期課堂內容，進行多人在線協同開發的設計項目。

根據老師提供的手足球設計構想，設計手足球機構。採用的兩隊1守門員,2後衛,3中分.4前鋒，的二十人制足球。並且在原有的手足球桌臺上使用代碼控制伺服馬達驅動，取代原來的人人對戰模式，進行人機對戰。

在設計上首先要進行onshape的球員繪製，為避免較為複雜的3D建模和渲染，採用較為扁平的類似長方形設計，需要繪製二十個相同尺寸和規格的球員模型，接著進行球台的繪製，最後進行足球的繪製，該項過程需要不同組員進行協同設計，目的是較為方便的完成設計變更。

![設計草圖][design]

[design]: ./images/設計草圖.png {#fig:駱駝 }

零組件尺寸分析
---

一、球場分析

球場尺寸依照網頁上的進行設計。

![球場草圖分析][siteAA]

[siteAA]: ./images/official-foosball-table-dimensions.jpg {#fig:駱駝 }

至於球場高度的部分，先以模擬時方便看得到球移動為優先考量，然後選擇適當的高度即可。

![球場分析][siteAB]

[siteAB]: ./images/chrome_8xxV6ukHaq.png {#fig:駱駝 }

場地變更設計:

進行模擬程式時，發現到當球滾到場地角落時，足球員將無法再次擊球，因此參考現實中，足球比賽中所謂的角球的概念將場地邊更成四個角落皆為斜坡，如下圖2.3。

![球場分析角落][siteAC]

[siteAC]: ./images/0808080.png {#fig:駱駝 }


二、球員分析

同樣依照網站上所給隻尺寸進行繪製的動作。

![球員分析草圖][playerAA]

[playerAA]: ./images/foosball_player_dimension.jpg {#fig:駱駝 }

但由於模擬時，發現球員尺寸會造成兩根桿子平行，球員互相撞擊的部分，因此做了外型上的更改。

![球員分析][playerAB]

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

![成品分析][productAA]

[productAA]: ./images/chrome_8NEqd8EvlG.png {#fig:駱駝 }

---
參數設計與繪圖
---

一、球檯

![球檯][TableBA]

[TableBA]: ./images/球檯.png {#fig:駱駝 }

二、球門與軌道

![球門與軌道前視圖][goalBA]

[goalBA]: ./images/軌道.png {#fig:駱駝 }

![球門側視圖][goalBB]

[goalBB]: ./images/球門側視圖.png {#fig:駱駝 }

![球門][goalBC]

[goalBC]: ./images/球門.png {#fig:駱駝 }

![球門與軌道上視圖][goalBD]

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

![組合圖][combinationBA]

[combinationBA]: ./images/組合件.png {#fig:駱駝 }

參數設計與繪圖
---

細部設計與 BOM
---



![球場工程圖][siteCA]

[siteCA]: ./images/球場工程圖.jpg {#fig:駱駝 }


![桿子工程圖][PoleCA]

[PoleCA]: ./images/桿子工程圖.jpg {#fig:駱駝 }


![球員工程圖][playerCA]

[playerCA]: ./images/球員工程圖.jpg {#fig:駱駝 }


![送球機構支撐架工程圖][SupportCA]

[SupportCA]: ./images/送球機構支撐架.jpg {#fig:駱駝 }


![大風車工程圖][windmilltCA]

[windmilltCA]: ./images/風車工程圖.jpg {#fig:駱駝 }


![爆炸圖][BOM]

[BOM]: ./images/爆炸圖.jpg {#fig:駱駝 }


