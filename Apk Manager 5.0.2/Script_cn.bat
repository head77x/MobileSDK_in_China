@echo off
title Apk Manager 5.0.2 （汉化：梦呓·旧乐章）
setlocal enabledelayedexpansion
COLOR 0A
if (%1)==(0) goto skipme
if (%1) neq () goto adbi
echo -------------------------------------------------------------------------- >> log.txt
echo                      ^|%date% -- %time%^| >> log.txt
echo -------------------------------------------------------------------------- >> log.txt
Script 0 2>> log.txt
:skipme
mode con:cols=81 lines=42
:skipme
set usrc=9
set capp=无
set heapy=64
java -version 
if errorlevel 1 goto errjava
other\adb version 
if errorlevel 1 goto erradb
set /A count=0
FOR %%F IN (place-apk-here-for-modding/*.apk) DO (
set /A count+=1
set tmpstore=%%~nF%%~xF
)
if %count%==1 (set capp=%tmpstore%)
cls
:restart
cd "%~dp0"
set menunr=GARBAGE
cls
echo  ------------------------------------------------------------------------------
echo                      Apk Manager 5.0.2 （汉化：梦呓·旧乐章）
echo  ------------------------------------------------------------------------------
echo  ^| 压缩级别：%usrc% ^| Java内存大小：%heapy%mb ^| 当前项目：%capp% ^|
echo  ------------------------------------------------------------------------------
echo  ----------------------------------
echo  简单任务 例如：ROM编辑
echo  ----------------------------------
echo  0    Adb pull
echo  1    解包 Apk
echo  2    优化内部图片
echo  3    打包 Apk 
echo  4    签名 Apk (不可用于系统 Apk)
echo  5    Zipalign优化 (做一次文件创建/签名)
echo  6    安装 Apk (不可用于系统 apk, 请使用 Adb push)
echo  7    打包/签名/安装 Apk (一步完成)
echo  8    Adb push (只可用于系统 apk)
echo  -----------------------------------
echo  高级任务 例如：代码编辑
echo  -----------------------------------
echo  9    反编译 Apk
echo  10   反编译 Apk (依存关系) (用于专有ROM的APK)
echo  11   编译 Apk
echo  12   签名 Apk
echo  13   安装 Apk
echo  14   编译/签名/安装 Apk (只可用于非系统 Apk)
echo  -----------------------------------
echo  详细设置
echo  -----------------------------------
echo  15   批量优化 Apk (仅限 place-apk-here-to-batch-optimize 文件夹)
echo  16   签名 Apk (支持批量)(仅限 place-apk-here-for-signing 文件夹)
echo  17   批处理优化 ogg 文件 (仅限 place-ogg-here 文件夹)
echo  18   清理文件/文件夹
echo  19   选择 Apk 压缩级别
echo  20   设置最大内存大小 (若在反编译或编译时卡死请使用此选项)
echo  21   阅读日志
echo  22   设置当前项目
echo  23   关于/提示/调试选项
echo  24   退出
echo  -------------------------------------------------------------------------------
SET /P menunr=请选择一个选项：
IF %menunr%==0 (goto ap)
IF %menunr%==15 (goto bopt)
IF %menunr%==16 (goto asi)
IF %menunr%==17 (goto ogg)
IF %menunr%==19 (goto usrcomp)
IF %menunr%==20 (goto heap)
IF %menunr%==21 (goto logr)
IF %menunr%==22 (goto filesel)
IF %menunr%==23 (goto about)
IF %menunr%==24 (goto quit)
IF %menunr%==18 (goto cleanp)
if %capp%==None goto noproj
IF %menunr%==1 (goto ex)
IF %menunr%==2 (goto opt)
IF %menunr%==3 (goto zip)
IF %menunr%==4 (goto si)
IF %menunr%==5 (goto zipa)
IF %menunr%==6 (goto ins)
IF %menunr%==7 (goto alli)
IF %menunr%==8 (goto apu)
IF %menunr%==9 (goto de)
IF %menunr%==10 (goto ded)
IF %menunr%==11 (goto co)
IF %menunr%==12 (goto si)
IF %menunr%==13 (goto ins)
IF %menunr%==14 (goto all)
:WHAT
echo 您输入了非菜单中的选项？
PAUSE
goto restart
:cleanp
echo 1   清空 projects 文件夹中该项目的文件夹
echo 2   清空 place-apk-here-for-modding 文件夹
echo 3   清空 place-ogg-here 文件夹
echo 4   清空 place-apk-here-to-batch-optimize 文件夹
echo 5   清空 place-apk-here-for-signing 文件夹
echo 6   清空 projects 文件夹
echo 7   清空所有文件夹
echo 8   返回主菜单
SET /P menuna=请选择一个选项：
echo 正在清除目录
IF %menuna%==1 (
if %capp%==None goto noproj
rmdir /S /Q %userprofile%\apktool > nul
rmdir /S /Q projects\%capp% > nul
mkdir projects\%capp%
)
IF %menuna%==2 (
rmdir /S /Q %userprofile%\apktool > nul
rmdir /S /Q place-apk-here-for-modding > nul
mkdir place-apk-here-for-modding
)
IF %menuna%==3 (
rmdir /S /Q place-ogg-here > nul
mkdir place-ogg-here
)
IF %menuna%==4 (
rmdir /S /Q place-apk-here-to-batch-optimize > nul
mkdir place-apk-here-to-batch-optimize
)
IF %menuna%==5 (
rmdir /S /Q place-apk-here-for-signing > nul
mkdir place-apk-here-for-signing
)
IF %menuna%==7 (
rmdir /S /Q %userprofile%\apktool > nul
rmdir /S /Q projects\%capp% > nul
mkdir projects\%capp%
rmdir /S /Q place-apk-here-for-modding > nul
mkdir place-apk-here-for-modding
rmdir /S /Q place-ogg-here > nul
mkdir place-ogg-here
rmdir /S /Q place-apk-here-to-batch-optimize > nul
mkdir place-apk-here-to-batch-optimize
rmdir /S /Q place-apk-here-for-signing > nul
mkdir place-apk-here-for-signing
rmdir /S /Q %userprofile%\apktool > nul
rmdir /S /Q projects > nul
mkdir projects
)
IF %menuna%==6 (
rmdir /S /Q %userprofile%\apktool > nul
rmdir /S /Q projects > nul
mkdir projects
)
goto restart
:about
cls
echo 关于
echo -----
echo Apk Manager v5.0.2
echo ApkTool v1.4.1
echo 7za v9.20
echo Roptipng v0.6.3
echo Sox v14.3.1
echo Android Asset Packaging Tool v0.2
echo.
echo 汉化
echo -----
echo 梦呓·旧乐章  
echo 如果汉化哪里出现问题，欢迎您联系我 
echo QQ：574104228  微博：http://weibo.com/208163458 
echo.
echo 提示
echo -----
echo 1、如果修改系统应用，千万不要签名，除非你想签名所有的 apk
echo    并且共享它的共享应用程序：UID 。
echo 2、如果反编译/重新编译系统应用，没有保存 AndroidManifest.xml 到原来的apk中，
echo    如果要恢复并且推送apk的话，请这样做：
echo     adb remount
echo     adb shell stop
echo     adb push something.apk /wherever/something.apk
echo     adb shell start
echo 3、反编译一个主题的apk是不可能的，你必须获得一个未经过编译的apk文件，
echo    让您的apk随着xml变化重新编译 
echo 4、如果你的坚持和日志没有给你指出你什么地方出错了 
echo    请通过http://www.tiny.cc/apkmanager联系我 
echo.
echo 请确保您将您的log.txt文件也一并传上来。如果它不是您所想要的东西 
echo 当您推送到手机的时候，将adb日志也发送过来。请执行下列步骤： 
echo 1、将手机连接到您的电脑上 
echo 2、推送/安装应用到您的手机上 
echo 3、选择此菜单中选择 “创建日志” 选项 
echo 4、让新的窗口运行10秒钟，然后将其关闭 
echo 如果这么做，您会发现一个adblog.txt会在根文件夹下面，将它上传即可 
echo.
echo 1、创建日志
echo 2、返回主菜单
SET /P menunr=请选择一个选项：
IF %menunr%==1 (Start "Adb Log" other\signer 2)
goto restart
:portapk
echo 请您尝试重新签名 Apk 看看是否有效果
echo 是否成功安装 (y/n) ^?
echo 好的，让我找找是否存在任何共享 uid ，如果找到了我将删除它们
:filesel
cls
set /A count=0
FOR %%F IN (place-apk-here-for-modding/*.apk) DO (
set /A count+=1
set a!count!=%%F
if /I !count! LEQ 9 (echo ^- !count!  - %%F )
if /I !count! GTR 10 (echo ^- !count! - %%F )
)
echo.
echo 选择要被作为当前项目的Apk
set /P INPUT=输入它的编号： %=%
if /I %INPUT% GTR !count! (goto chc)
if /I %INPUT% LSS 1 (goto chc)
set capp=!a%INPUT%!
goto restart
:chc
set capp=无
goto restart
rem :bins
rem echo Waiting for device
rem adb wait-for-device
rem echo Installing Apks
rem FOR %%F IN ("%~dp0place-apk-here-for-signing\*.apk") DO adb install -r "%%F"
rem goto restart
:heap
set /P INPUT=设置当前Java大小 (例如 512) : %=%
set heapy=%INPUT%
cls
goto restart
:usrcomp
set /P INPUT=设置压缩级别 (0-9) : %=%
set usrc=%INPUT%
cls
goto restart
:ogg
cd other
mkdir temp
echo 正在优化 Ogg
FOR %%F IN ("../place-ogg-here/*.ogg") DO sox "../place-ogg-here/%%F" -C 0 "temp\%%F"
cd ..
MOVE other\temp\*  place-ogg-here
rmdir /S /Q other\temp
goto restart
:alli
IF NOT EXIST "%~dp0projects\%capp%" GOTO dirnada
cls
echo 1   系统 Apk (保留签名)
echo 2   常规 Apk (删除原有签名并重新签名)
SET /P menunr=请选择一个选项： 
IF %menunr%==1 (goto sys1)
IF %menunr%==2 (goto oa1)
:sys1
echo 正在打包 Apk
cd other
7za a -tzip "../place-apk-here-for-modding/unsigned%capp%" "../projects/%capp%/*" -mx%usrc%
if errorlevel 1 (
echo "发生了一个错误，请检查日志 （主菜单 选项21）"
PAUSE
)
cd ..
goto si1
:oa1
cd other
echo 正在打包 Apk
rmdir /S /Q "../out/META-INF"
7za a -tzip "../place-apk-here-for-modding/unsigned%capp%" "../projects/%capp%/*" -mx%usrc%
if errorlevel 1 (
echo "发生了一个错误，请检查日志 （主菜单 选项21）"
PAUSE
)
cd ..
:si1
cd other
echo 正在签名 Apk
java -Xmx%heapy%m -jar signapk.jar -w testkey.x509.pem testkey.pk8 ../place-apk-here-for-modding/unsigned%capp% ../place-apk-here-for-modding/signed%capp%
if errorlevel 1 (
echo "发生了一个错误，请检查日志 （主菜单 选项21）"
PAUSE
)
DEL /Q "../place-apk-here-for-modding/unsigned%capp%"
cd ..
:ins1
echo 正在等待设备
adb wait-for-device
echo 正在安装 Apk
adb install -r place-apk-here-for-modding/signed%capp%
if errorlevel 1 (
echo "发生了一个错误，请检查日志 （主菜单 选项21）"
PAUSE
)
goto restart
:asi
cd other
DEL /Q "../place-apk-here-for-signing/signed.apk"
FOR %%F in (../place-apk-here-for-signing/*) DO call signer "%%F"
cd ..
goto restart
:bopt
set /P INPUT=您想做 zipalign(z)、优化 PNG(p)还是都做 (zp)？: %=%
FOR %%F IN (place-apk-here-to-batch-optimize\*.apk) DO (call :dan "%%F")
MOVE "other\optimized\*.apk" "place-apk-here-to-batch-optimize"
rmdir /S /Q "other\optimized"
goto restart
:dan
if (%INPUT%)==(zp) GOTO zipb
if (%INPUT%)==(z) GOTO zipo
:zipb
@echo Optimizing %~1...
cd other
md "apkopt_temp_%~n1"
md optimized
dir /b
7za x -o"apkopt_temp_%~n1" "../place-apk-here-to-batch-optimize/%~n1%~x1"
mkdir temp
xcopy "apkopt_temp_%~n1\res\*.9.png" "temp" /S /Y
roptipng -o99 "apkopt_temp_%~n1\**\*.png"
del /q "..\place-apk-here-to-batch-optimize\%~n1%~x1"
xcopy "temp" "apkopt_temp_%~n1\res" /S /Y
rmdir "temp" /S /Q
if (%INPUT%)==(p) GOTO ponly
7za a -tzip "optimized\%~n1.unaligned.apk" "%~dp0other\apkopt_temp_%~n1\*" -mx%usrc% 
rd /s /q "apkopt_temp_%~n1"
zipalign -v 4 "optimized\%~n1.unaligned.apk" "optimized\%~n1.apk"
del /q "optimized\%~n1.unaligned.apk"
goto endab
:ponly
7za a -tzip "optimized\%~n1.apk" "%~dp0other\apkopt_temp_%~n1\*" -mx%usrc%
rd /s /q "apkopt_temp_%~n1"
goto endab
:zipo
@echo Optimizing %~1...
zipalign -v 4 "%~dp0place-apk-here-to-batch-optimize\%~n1%~x1" "%~dp0place-apk-here-to-batch-optimize\u%~n1%~x1"
del /q "%~dp0place-apk-here-to-batch-optimize\%~n1%~x1"
rename "%~dp0place-apk-here-to-batch-optimize\u%~n1%~x1" "%~n1%~x1"
goto endab
:dirnada
echo 项目没有被设置，当前项目：%capp% 
PAUSE
goto restart
:opt
IF NOT EXIST "%~dp0projects\%capp%" GOTO dirnada
mkdir temp
xcopy "%~dp0projects\%capp%\res\*.9.png" "%~dp0temp" /S /Y
cd other
echo 正在优化 Png
roptipng -o99 "../projects/%capp%/**/*.png"
cd ..
xcopy "%~dp0temp" "%~dp0projects\%capp%\res" /S /Y
rmdir temp /S /Q
goto restart
:noproj
echo 请选择一个 Apk （主菜单 选项22）
PAUSE
goto restart
:ap
echo 请输入您要拉取的 Apk 路径
echo 例如： /system/app/launcher.apk
set /P INPUT=输入类型：%=%
echo 正在拉取 Apk
adb pull %INPUT% "%~dp0place-apk-here-for-modding\something.apk"
if errorlevel 1 (
echo "发生了一个错误，请检查日志 （主菜单 选项21）"
PAUSE
goto restart
)
:renameagain
echo 请为此文件命名
echo 例如 (launcher.apk)
set /P INPUT=输入类型：%=%
IF EXIST "%~dp0place-apk-here-for-modding\%INPUT%" (
echo 文件已存在，请尝试其它名字
PAUSE
goto renameagain)
rename "%~dp0place-apk-here-for-modding\something.apk" %INPUT%
echo 您想把这设置为您的当前项目吗 (y/n)?
set /P inab=输入类型：%=%
if %inab%==y (set capp=%INPUT%)
goto restart
:apu
echo 请输入 Adb 推送路径及文件名
echo 例如输入: /system/app/launcher.apk
set /P INPUT=输入类型：%=%
echo 正在等待设备
adb wait-for-device
adb remount
echo 正在推送 Apk
adb push "place-apk-here-for-modding\unsigned%capp%" %INPUT%
if errorlevel 1 (
echo "发生了一个错误，请检查日志 （主菜单 选项21）"
PAUSE
)
goto restart
:zipa
echo Zipaligning Apk
IF EXIST "%~dp0place-apk-here-for-modding\signed%capp%" zipalign -f 4 "%~dp0place-apk-here-for-modding\signed%capp%" "%~dp0place-apk-here-for-modding\signedaligned%capp%"

IF EXIST "%~dp0place-apk-here-for-modding\unsigned%capp%" zipalign -f 4 "%~dp0place-apk-here-for-modding\unsigned%capp%" "%~dp0place-apk-here-for-modding\unsignedaligned%capp%"

if errorlevel 1 (
echo "发生了一个错误，请检查日志 （主菜单 选项21）"
PAUSE
)
DEL /Q "%~dp0place-apk-here-for-modding\signed%capp%"
DEL /Q "%~dp0place-apk-here-for-modding\unsigned%capp%"
rename "%~dp0place-apk-here-for-modding\signedaligned%capp%" signed%capp%
rename "%~dp0place-apk-here-for-modding\unsignedaligned%capp%" unsigned%capp%
goto restart
:ex
cd other
echo 正在解包 apk
IF EXIST "../projects/%capp%" (rmdir /S /Q "../projects/%capp%")
7za x -o"../projects/%capp%" "../place-apk-here-for-modding/%capp%"
if errorlevel 1 (
echo "发生了一个错误，请检查日志 （主菜单 选项21）"
PAUSE
)
cd ..
goto restart
:zip
IF NOT EXIST "%~dp0projects\%capp%" GOTO dirnada
cls
echo 1、系统 Apk (保留签名)
echo 2、常规 Apk (删除原有签名并重新签名)
SET /P menunr=请选择一个选项： 
IF %menunr%==1 (goto sys)
IF %menunr%==2 (goto oa)
:sys
echo 正在打包 Apk
cd other
7za a -tzip "../place-apk-here-for-modding/unsigned%capp%" "../projects/%capp%/*" -mx%usrc%
if errorlevel 1 (
echo "发生了一个错误，请检查日志 （主菜单 选项21）"
PAUSE
)

cd ..
goto restart
:oa
cd other
echo 正在打包 Apk
rmdir /S /Q "../out/META-INF"
7za a -tzip "../place-apk-here-for-modding/unsigned%capp%" "../projects/%capp%/*" -mx%usrc%
if errorlevel 1 (
echo "发生了一个错误，请检查日志 （主菜单 选项21）"
PAUSE
)

cd ..
goto restart
:ded
cd other
IF EXIST "%~dp0place-apk-here-for-modding\unsigned%capp%" (del /Q "%~dp0place-apk-here-for-modding\unsigned%capp%")
:temr
echo 将 dependee apk 文件拖入该窗口或者输入文件所在路径
echo 比如：反编译Rosie.apk，将com.htc.resources.apk拖到此窗口
set /P INPUT=输入类型：%=%
java -jar apktool.jar if %INPUT%
if NOT EXIST "%userprofile%\apktool\framework\2.apk" (
echo.
echo "对不起，那不是 dependee apk 文件，请再试一次"
goto temr
)
echo 正在反编译 Apk
java -Xmx%heapy%m -jar apktool.jar d ../place-apk-here-for-modding/%capp% ../projects/%capp%
if errorlevel 1 (
echo "发生了一个错误，请检查日志 （主菜单 选项21）"
PAUSE
)
cd ..
goto restart
:de
cd other
DEL /Q "../place-apk-here-for-modding/signed%capp%"
DEL /Q "../place-apk-here-for-modding/unsigned%capp%"
IF EXIST "../projects/%capp%" (rmdir /S /Q "../projects/%capp%")
echo 正在反编译 Apk
java -Xmx%heapy%m -jar apktool.jar d "../place-apk-here-for-modding/%capp%" "../projects/%capp%"
if errorlevel 1 (
echo "发生了一个错误，请检查日志 （主菜单 选项21）"
PAUSE
)
cd ..
goto restart
:co
IF NOT EXIST "%~dp0projects\%capp%" GOTO dirnada
cd other
echo 正在创建 Apk
IF EXIST "%~dp0place-apk-here-for-modding\unsigned%capp%" (del /Q "%~dp0place-apk-here-for-modding\unsigned%capp%")
java -Xmx%heapy%m -jar apktool.jar b "../projects/%capp%" "%~dp0place-apk-here-for-modding\unsigned%capp%"
if errorlevel 1 (
echo "发生了一个错误，请检查日志 （主菜单 选项21）"
PAUSE
)
echo 这是个系统 Apk ^(y/n^)
set /P INPU=输入类型：%=%
if %INPU%==n (goto q1)
:nq1
echo 除了将文件签名，您还想复制吗？
echo 在您没有修改任何其他文件
echo 从而确保至少在原始的apk上 
echo # 错误 ^(y/n^)
set /P INPUT1=输入类型：%=%
if %INPUT1%==y (call :nq2)
if %INPUT1%==n (call :nq3)
:nq2
rmdir /S /Q "%~dp0keep"
7za x -o"../keep" "../place-apk-here-for-modding/%capp%"
echo 在apk文件管理器的文件夹，您会发现 
echo 一个保留的文件夹。在这里面，删除  
echo 一切您已做的修改，离开您没有做 
echo 的文件。如果您修改了任何XML， 
echo 那就请您将文件内的 resources.arsc 
echo 删除。完成之后，按回车键即可 
echo 多谢合作 
PAUSE
7za a -tzip "../place-apk-here-for-modding/unsigned%capp%" "../keep/*" -mx%usrc% -r
rmdir /S /Q "%~dp0keep"
cd ..
goto restart
:nq3
7za x -o"../projects/temp" "../place-apk-here-for-modding/%capp%" META-INF -r
7za a -tzip "../place-apk-here-for-modding/unsigned%capp%" "../projects/temp/*" -mx%usrc% -r
rmdir /S /Q "%~dp0projects/temp"
:q1
cd ..
goto restart
:si
cd other
echo 正在签名 Apk
java -Xmx%heapy%m -jar signapk.jar -w testkey.x509.pem testkey.pk8 ../place-apk-here-for-modding/unsigned%capp% ../place-apk-here-for-modding/signed%capp%
if errorlevel 1 (
echo "发生了一个错误，请检查日志 （主菜单 选项21）"
PAUSE
)

DEL /Q "../place-apk-here-for-modding/unsigned%capp%"
cd ..
goto restart
:ins
echo 正在等待设备
adb wait-for-device
echo 正在安装 Apk
adb install -r place-apk-here-for-modding/signed%capp%
if errorlevel 1 (
echo "发生了一个错误，请检查日志 （主菜单 选项21）"
PAUSE
)
goto restart
:all
IF NOT EXIST "%~dp0projects\%capp%" GOTO dirnada
cd other
echo 正在创建 Apk
IF EXIST "%~dp0place-apk-here-for-modding\unsigned%capp%" (del /Q "%~dp0place-apk-here-for-modding\unsigned%capp%")
java -Xmx%heapy%m -jar apktool.jar b "../projects/%capp%" "%~dp0place-apk-here-for-modding\unsigned%capp%"
if errorlevel 1 (
echo "发生了一个错误，请检查日志 （主菜单 选项21）"
PAUSE
goto restart
)
echo 正在签名 Apk
java -Xmx%heapy%m -jar signapk.jar -w testkey.x509.pem testkey.pk8 ../place-apk-here-for-modding/unsigned%capp% ../place-apk-here-for-modding/signed%capp%
if errorlevel 1 (
echo "发生了一个错误，请检查日志 （主菜单 选项21）"
PAUSE
)
DEL /Q "../place-apk-here-for-modding/unsigned%capp%"
cd ..
echo 正在等待设备
adb wait-for-device
echo 正在安装 Apk
adb install -r place-apk-here-for-modding/signed%capp%
if errorlevel 1 (
echo "发生了一个错误，请检查日志 （主菜单 选项21）"
PAUSE
)
goto restart
:errjava
cls
echo 找不到 Java , 您将不能对 Apk 签名或使用 ApkTool
PAUSE
goto restart
:erradb
cls
echo 找不到 Adb , 您将不能操作您手机上的文件
PAUSE
goto restart
:adbi
mode con:cols=48 lines=8
echo 正在等待设备
adb wait-for-device
set count=0
:loop
if "%~n1"=="" goto :endloop
echo 正在安装 %~n1
adb install -r %1
shift
set /a count+=1
goto :loop
:endloop
goto quit
:logr
cd other
Start "Read The Log - Main script is still running, close this to return" signer 1
goto restart
:endab
cd ..
@echo %~1 优化完成
:quit
