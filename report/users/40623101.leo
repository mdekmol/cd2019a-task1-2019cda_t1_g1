<?xml version="1.0" encoding="utf-8"?>
<!-- Created by Leo: http://leoeditor.com/leo_toc.html -->
<leo_file xmlns:leo="http://leoeditor.com/namespaces/leo-python-editor/1.1" >
<leo_header file_format="2" tnodes="0" max_tnode_index="0" clone_windows="0"/>
<globals body_outline_ratio="0.5" body_secondary_ratio="0.5">
	<global_window_position top="50" left="50" height="500" width="700"/>
	<global_log_window_position top="0" left="0" height="0" width="0"/>
</globals>
<preferences/>
<find_panel_settings/>
<vnodes>
<v t="ahshoe.20161120121808.1"><vh>@settings</vh>
<v t="ahshoe.20170315212615.1"><vh>@data qt-gui-plugin-style-sheet</vh></v>
<v t="ahshoe.20170315212626.1"><vh>@string initial_split_orientation = horizontal</vh></v>
</v>
<v t="yen.20170429132400.1"><vh>協同著作規劃</vh></v>
<v t="40323230.20170123213451.1"><vh>@button Report pdf</vh></v>
<v t="yen.20170429103742.1" a="E"><vh>@path ./../</vh>
<v t="yen.20170429103940.1" a="E"><vh>@path markdown</vh>
<v t="ahshoe.20170322182713.1"><vh>@edit reference.md</vh></v>
<v t="ahshoe.20170322181453.1"><vh>@edit refer.bib</vh></v>
<v t="leo.20171119234752.1"><vh>封面以及摘要</vh>
<v t="ahshoe.20161120122151.1"><vh>@clean cover_and_abstract.md</vh>
<v t="ahshoe.20170317115820.1"><vh>摘要</vh></v>
</v>
</v>
<v t="leo.20171119234822.1" a="E"><vh>各章節內容</vh>
<v t="yen.20170429214845.1" a="E"><vh>@path paragraph</vh>
<v t="leo.20190106201047.1"><vh>@clean introduction.md</vh></v>
<v t="leo.20190519180750.1" a="E"><vh>@clean tablefootball_design.md</vh>
<v t="leo.20190519181552.1"><vh>零組件尺寸分析</vh></v>
<v t="leo.20190519181710.1"><vh>參數設計與繪圖</vh></v>
<v t="leo.20190519181713.1"><vh>細部設計與 BOM</vh></v>
</v>
<v t="leo.20190519180919.1"><vh>@clean vrep_tablefootball.md</vh></v>
<v t="leo.20190106201247.3" a="E"><vh>@clean vrep_take_ball.md</vh>
<v t="leo.20190519181857.1"><vh>送球機構設計</vh></v>
<v t="leo.20190519181902.1"><vh>送球機構模擬</vh></v>
</v>
<v t="leo.20190110193829.1" a="E"><vh>@clean vrep_python_control.md</vh>
<v t="leo.20190519182839.1"><vh>雙人鍵盤控制對打</vh></v>
<v t="leo.20190519182843.1"><vh>單人鍵盤控制與電腦對打</vh></v>
<v t="leo.20190519182841.1"><vh>雙電腦對打</vh></v>
</v>
</v>
</v>
</v>
</v>
</vnodes>
<tnodes>
<t tx="40323230.20170123213451.1">@language python
filename = "report"
import os, platform
import chapter
# 更換目錄到 markdown 
os.chdir("./../markdown")

# 若在 Linux 環境則使用 ukai.ttc 系統字形
if platform.system().lower()=="linux": font = "ukai.ttc"
# 在 windows 環境使用 SimSun 字形
elif platform.system().lower()=="windows": font = "SimSun"
else: font = "Arial"
fontsize = "12"
margin = "1in"
# --pdf-engine 使用 xelatex
# lang 請參照 https://tools.ietf.org/html/bcp47, 這裡的 zh-cmn 為 Mandarin Chinese 國語
# -V lang=zh-cmn 為一組 key=value 對應的 Variable 設定
# -N 表示 Number section headings in LaTeX, ConTeXt, HTML, or EPUB output. By default, sections are not numbered.
settingFlag = "--pdf-engine=xelatex -V lang=zh-cmn -N --toc --highlight-style kate -V documentclass=report  --filter pandoc-fignos --filter pandoc-tablenos --template=template.tex -V \"CJKmainfont:{0}\" -V fontsize={1}pt -V geometry:margin={2} --bibliography=refer.bib --csl=ieee.csl".format(font, fontsize, margin)
g.es("---Pandoc---")

# 選擇所要納入的 Markdown 檔案, 不納入的檔案名稱前方加上  # 即可
chapter_list = " ".join("./paragraph/" + i for i in [
"introduction.md", 
"tablefootball_design.md", 
"vrep_take_ball.md", 
"vrep_tablefootball.md",
"vrep_python_control.md"
])

# 若系統並未正確轉檔, 可以將 os.system 改為 g.es 表示要使用 Leo Editor 的 global 物件中的 echo string 將指令印在 log 區
# 然後複製指令, 然後在命令列視窗中的 markdown 目錄中執行, 就可以得到錯誤訊息
# 或許可以再從 https://stackoverflow.com/questions/26005583/return-value-of-x-os-system 中的建議改進此一指令
g.es(os.system("pandoc cover_and_abstract.md " + chapter_list + " reference.md -o ../pdf/report.pdf {}".format(settingFlag)))
g.es("pandoc cover_and_abstract.md " + chapter_list + " reference.md -o ../pdf/report.pdf {}".format(settingFlag))
g.es("PDF 轉換完畢")
g.es('-'*12)</t>
<t tx="ahshoe.20161120121808.1"></t>
<t tx="ahshoe.20161120122151.1">---
university_zh: '國立虎尾科技大學'
institute_zh: '機械設計工程系'
category_zh: '產品協同設計第一組'
title_zh: '手足球'
title_en: 'Table Football'
author:
- 設計二甲 40623101 王馨慧
- 設計二甲 40623108 林郁涵
- 設計二甲 40623116 楊子毅
- 設計二甲 40623117 楊智傑
- 設計二甲 40623119 歐宗韋
- 設計二甲 40623122 蔡柄澤
- 設計二甲 40623129 陳威誠
- 設計二甲 40623140 韓希然
- 設計二甲 40423157 朱明棈

advisor_zh: '嚴家銘'
---

@others
</t>
<t tx="ahshoe.20170315212615.1">QTreeWidget {
    /* These apply to the selected item, but not to editing items.*/
    background-color: #ffffec; /* Leo's traditional tree color */
    selection-color: black; /* was white */
    selection-background-color: lightgrey;
    /* font-family: SansSerif; */
    /*font-family: DejaVu Sans Mono;*/
    font-family:YaHei Mono;
    /* 標題字型大小設定 */
    font-size: 20px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal, italic,oblique */
 }

/* Headline edit widgets */
QTreeWidget QLineEdit {
    background-color: cornsilk;
    selection-color: white;
    selection-background-color: blue;
    /*font-family: DejaVu Sans Mono;*/    
    font-family:YaHei Mono;
    /* 沒有特別對應字型大小 */
    font-size: 20px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal, italic,oblique */
}

/* The log panes */
QTextEdit {
    background-color: #f2fdff;
    selection-color: red;
    selection-background-color: blue;
    /* font-family: Courier New; */
    font-family:YaHei Mono;
    /* log font 大小 */
    font-size: 20px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal, italic,oblique */
}

/* The body pane */
QTextEdit#richTextEdit {
    background-color: #fdf5f5; /* A kind of pink. */
    selection-color: white;
    selection-background-color: red;
    /*font-family: DejaVu Sans Mono;*/
    /* font-family: Courier New; */
    font-family:YaHei Mono;
    /* 內文字型大小 */
    font-size: 20px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal,italic,oblique */
}

QLabel {
    font-family:YaHei Mono;'CherryPy', 'pytz', 'mako', 'beautifulsoup4', 'pymysql', 'peewee'
    /* 下方的 Minibuffer 標題字型大小 */
    font-size: 20px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal,italic,oblique */
}

/* Editor labels */
QLineEdit#editorLabel {
    background-color: #ffffec;
    font-family:YaHei Mono;
    /* 沒有直接對應字型大小 */
    font-size: 20px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal,italic,oblique */
    border: 2px;
    margin: 2px;
}</t>
<t tx="ahshoe.20170315212626.1">horizontal: body pane to the left
vertical: body pane on the botton</t>
<t tx="ahshoe.20170317115820.1">---
abstract: |
    手足球系統設計
    
    手足球系統模擬
    
    送球機構設計
    
    送球機構模擬
    
    手足球系統功能
    
---


</t>
<t tx="leo.20171119234752.1"></t>
<t tx="leo.20171119234822.1"></t>
<t tx="leo.20190106201047.1">前言
===

        產品協同的目的就是要一起完成一個商品，在這過程中，每一個人都可以專研自己所擅長的領域，然後透過協同來交換彼此的訊息，分別以不同的研發項目來完成這個作品。

        藉由手足球的模擬，可以實際體會到協同的好處，在有限的時間內，完成超過一個人可以完成的事情，更可以深刻體會到協同之重要性。


@others
</t>
<t tx="leo.20190106201247.3"> 送球機構設計與模擬
===


@others
</t>
<t tx="leo.20190110193829.1">系統功能展示
===

@others
</t>
<t tx="leo.20190519180750.1">設計與繪圖
===


@others
</t>
<t tx="leo.20190519180919.1">手足球系統模擬
===



@others
</t>
<t tx="leo.20190519181552.1">零組件尺寸分析
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

@others
</t>
<t tx="leo.20190519181710.1">參數設計與繪圖
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

@others
</t>
<t tx="leo.20190519181713.1">細部設計與 BOM
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
@others
</t>
<t tx="leo.20190519181857.1">送球機構設計
---

Week 11-12
如何將球從球門到中場，經過討論後，想說在進門後直接將球丟回中場去，但這種做法會增加寫程式的困擾，後來就想說改成直接帶回中場，以爪子的方式，將球從球門那裡運送到中場，所以就畫了一組爪子的機構，但最後放置在球門旁時，因為長度不夠，若要再改長度的話，此機構可能就無法運行，再加上運送的過程中，無法保證球不會掉，或是未能想到說要多加東西讓球從爪子上回到球場，所以就放棄了此機構。

之後我們分成兩小組去構想送球機構

![丟球回去][throw]

[throw]: ./images/丟球回去.png {#fig:駱駝 }

Week 12-13
經過第一次的送球機構思考後，我們決定讓進球門的球運送至高處，再以軌道高低差的方式，讓球自然滾入場內，因時間的關係，分成兩小組一起繪製，再決定最終版。

方法一

以上學期的鋼球運動系統為出發點，想畫出一個類似摩天輪的東西，就是以圓盤旋轉的方式，將球從低處運送到高處。

送球機構(圓盤)

![圓盤左][diskL]

[diskL]: ./images/圓盤左.png {#fig:駱駝 }

![圓盤右][diskR]

[diskR]: ./images/場地等角.png {#fig:駱駝 }


球檯與軌道(圓盤)

![送球機構圓盤][diskALL]

[diskALL]: ./images/送球機構(圓盤).png {#fig:駱駝 }

![送球機構圓盤透明][diskALLB]

[diskALLB]: ./images/送球機構(圓盤)透明.png {#fig:駱駝 }

方法二

後來想到可以以摩天輪的想法與丟球爪子合體，所以在設計時，加入了爪子的形式。畫完此一小機構後，運作起來的感覺還不錯，所以就決定用它，但還必須加上軌道，而軌道在畫製時，必須思考如何傾斜才能使球順利地滾入場地，還有在拿球與放球時的軌道設計須配合運轉機構的爪子。

送球機構(爪子)

![送球機構圖][GoBA]

[GoBA]: ./images/送球到高處.png {#fig:駱駝 }

一開始畫完的軌道，加上上一個小機構一起放入Vrep模擬時，會卡在一個地方就是將球送上去後，滑落到轉角就會卡住，於是我們就在轉角加一塊三角形擋板，讓球會因三角形的斜面而往下走。

![三角形擋板][Triangle]

[Triangle]: ./images/Inked送球機構角落LI.jpg {#fig:駱駝 }


![送球機構軌道組合][TrackALL]

[TrackALL]: ./images/送球機構加軌道.png {#fig:駱駝 }

@others
</t>
<t tx="leo.20190519181902.1">送球機構模擬
---

手足球球檯與送球機構設計完之後進行模擬，尋找哪裡零組件有干涉的問題；或者軌道傳送球時，球在哪裡會卡住，並返回onshape重新更改尺寸，再匯入至V-rep再次進行模擬。

https://youtu.be/CO5Xx6sN-Kc

@others
</t>
<t tx="leo.20190519182839.1">雙人鍵盤控制對打
---
https://youtu.be/yKlaM3ONPdU


@others
</t>
<t tx="leo.20190519182841.1">雙電腦對打
---
https://youtu.be/L2WIItHtdpo

https://youtu.be/_fmiNbCI618

第二個網址是加入送球機構的測試
@others
</t>
<t tx="leo.20190519182843.1">單人鍵盤控制與電腦對打
---
https://youtu.be/AE9rLeqkIlc


@others
</t>
<t tx="yen.20170429103742.1"></t>
<t tx="yen.20170429103940.1"></t>
<t tx="yen.20170429132400.1">每一位協同人員各在 users 目錄中建立一個 .leo 檔案

各自選擇要編輯的 .md 檔案, 可以使用 @edit 或 @clean 節點編輯指令

除非必要否則不更動 markdown 目錄下的 template.tex 檔案</t>
<t tx="yen.20170429214845.1"></t>
</tnodes>
</leo_file>
