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
<v t="40323230.20170123213451.1"><vh>@button Report pdf</vh></v>
<v t="yen.20170429132400.1"><vh>協同著作規劃</vh></v>
<v t="yen.20170429103742.1" a="E"><vh>@path ./../</vh>
<v t="yen.20170429103940.1" a="E"><vh>@path markdown</vh>
<v t="ahshoe.20170322182713.1"><vh>@edit reference.md</vh></v>
<v t="ahshoe.20170322181453.1"><vh>@edit refer.bib</vh></v>
<v t="leo.20171119234752.1" a="E"><vh>封面以及摘要</vh>
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

![Test][test]

[test]: ./images/kmol.png {#fig:駱駝}


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



@others
</t>
<t tx="leo.20190519181710.1">參數設計與繪圖
---



@others
</t>
<t tx="leo.20190519181713.1">細部設計與 BOM
---



@others
</t>
<t tx="leo.20190519181857.1">送球機構設計
---



@others
</t>
<t tx="leo.20190519181902.1">送球機構模擬
---




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

人對電腦的程式寫法

![人對電腦程式碼][opencvori]

[opencvori]:人對電腦程式碼.png  {#fig:駱駝}

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
