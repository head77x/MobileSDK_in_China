@echo off
title Apk Manager 5.0.2 ����������߽�������£�
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
set capp=��
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
echo                      Apk Manager 5.0.2 ����������߽�������£�
echo  ------------------------------------------------------------------------------
echo  ^| ѹ������%usrc% ^| Java�ڴ��С��%heapy%mb ^| ��ǰ��Ŀ��%capp% ^|
echo  ------------------------------------------------------------------------------
echo  ----------------------------------
echo  ������ ���磺ROM�༭
echo  ----------------------------------
echo  0    Adb pull
echo  1    ��� Apk
echo  2    �Ż��ڲ�ͼƬ
echo  3    ��� Apk 
echo  4    ǩ�� Apk (��������ϵͳ Apk)
echo  5    Zipalign�Ż� (��һ���ļ�����/ǩ��)
echo  6    ��װ Apk (��������ϵͳ apk, ��ʹ�� Adb push)
echo  7    ���/ǩ��/��װ Apk (һ�����)
echo  8    Adb push (ֻ������ϵͳ apk)
echo  -----------------------------------
echo  �߼����� ���磺����༭
echo  -----------------------------------
echo  9    ������ Apk
echo  10   ������ Apk (�����ϵ) (����ר��ROM��APK)
echo  11   ���� Apk
echo  12   ǩ�� Apk
echo  13   ��װ Apk
echo  14   ����/ǩ��/��װ Apk (ֻ�����ڷ�ϵͳ Apk)
echo  -----------------------------------
echo  ��ϸ����
echo  -----------------------------------
echo  15   �����Ż� Apk (���� place-apk-here-to-batch-optimize �ļ���)
echo  16   ǩ�� Apk (֧������)(���� place-apk-here-for-signing �ļ���)
echo  17   �������Ż� ogg �ļ� (���� place-ogg-here �ļ���)
echo  18   �����ļ�/�ļ���
echo  19   ѡ�� Apk ѹ������
echo  20   ��������ڴ��С (���ڷ���������ʱ������ʹ�ô�ѡ��)
echo  21   �Ķ���־
echo  22   ���õ�ǰ��Ŀ
echo  23   ����/��ʾ/����ѡ��
echo  24   �˳�
echo  -------------------------------------------------------------------------------
SET /P menunr=��ѡ��һ��ѡ�
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
echo �������˷ǲ˵��е�ѡ�
PAUSE
goto restart
:cleanp
echo 1   ��� projects �ļ����и���Ŀ���ļ���
echo 2   ��� place-apk-here-for-modding �ļ���
echo 3   ��� place-ogg-here �ļ���
echo 4   ��� place-apk-here-to-batch-optimize �ļ���
echo 5   ��� place-apk-here-for-signing �ļ���
echo 6   ��� projects �ļ���
echo 7   ��������ļ���
echo 8   �������˵�
SET /P menuna=��ѡ��һ��ѡ�
echo �������Ŀ¼
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
echo ����
echo -----
echo Apk Manager v5.0.2
echo ApkTool v1.4.1
echo 7za v9.20
echo Roptipng v0.6.3
echo Sox v14.3.1
echo Android Asset Packaging Tool v0.2
echo.
echo ����
echo -----
echo ��߽��������  
echo �����������������⣬��ӭ����ϵ�� 
echo QQ��574104228  ΢����http://weibo.com/208163458 
echo.
echo ��ʾ
echo -----
echo 1������޸�ϵͳӦ�ã�ǧ��Ҫǩ������������ǩ�����е� apk
echo    ���ҹ������Ĺ���Ӧ�ó���UID ��
echo 2�����������/���±���ϵͳӦ�ã�û�б��� AndroidManifest.xml ��ԭ����apk�У�
echo    ���Ҫ�ָ���������apk�Ļ�������������
echo     adb remount
echo     adb shell stop
echo     adb push something.apk /wherever/something.apk
echo     adb shell start
echo 3��������һ�������apk�ǲ����ܵģ��������һ��δ���������apk�ļ���
echo    ������apk����xml�仯���±��� 
echo 4�������ļ�ֺ���־û�и���ָ����ʲô�ط������� 
echo    ��ͨ��http://www.tiny.cc/apkmanager��ϵ�� 
echo.
echo ��ȷ����������log.txt�ļ�Ҳһ�������������������������Ҫ�Ķ��� 
echo �������͵��ֻ���ʱ�򣬽�adb��־Ҳ���͹�������ִ�����в��裺 
echo 1�����ֻ����ӵ����ĵ����� 
echo 2������/��װӦ�õ������ֻ��� 
echo 3��ѡ��˲˵���ѡ�� ��������־�� ѡ�� 
echo 4�����µĴ�������10���ӣ�Ȼ����ر� 
echo �����ô�������ᷢ��һ��adblog.txt���ڸ��ļ������棬�����ϴ����� 
echo.
echo 1��������־
echo 2���������˵�
SET /P menunr=��ѡ��һ��ѡ�
IF %menunr%==1 (Start "Adb Log" other\signer 2)
goto restart
:portapk
echo ������������ǩ�� Apk �����Ƿ���Ч��
echo �Ƿ�ɹ���װ (y/n) ^?
echo �õģ����������Ƿ�����κι��� uid ������ҵ����ҽ�ɾ������
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
echo ѡ��Ҫ����Ϊ��ǰ��Ŀ��Apk
set /P INPUT=�������ı�ţ� %=%
if /I %INPUT% GTR !count! (goto chc)
if /I %INPUT% LSS 1 (goto chc)
set capp=!a%INPUT%!
goto restart
:chc
set capp=��
goto restart
rem :bins
rem echo Waiting for device
rem adb wait-for-device
rem echo Installing Apks
rem FOR %%F IN ("%~dp0place-apk-here-for-signing\*.apk") DO adb install -r "%%F"
rem goto restart
:heap
set /P INPUT=���õ�ǰJava��С (���� 512) : %=%
set heapy=%INPUT%
cls
goto restart
:usrcomp
set /P INPUT=����ѹ������ (0-9) : %=%
set usrc=%INPUT%
cls
goto restart
:ogg
cd other
mkdir temp
echo �����Ż� Ogg
FOR %%F IN ("../place-ogg-here/*.ogg") DO sox "../place-ogg-here/%%F" -C 0 "temp\%%F"
cd ..
MOVE other\temp\*  place-ogg-here
rmdir /S /Q other\temp
goto restart
:alli
IF NOT EXIST "%~dp0projects\%capp%" GOTO dirnada
cls
echo 1   ϵͳ Apk (����ǩ��)
echo 2   ���� Apk (ɾ��ԭ��ǩ��������ǩ��)
SET /P menunr=��ѡ��һ��ѡ� 
IF %menunr%==1 (goto sys1)
IF %menunr%==2 (goto oa1)
:sys1
echo ���ڴ�� Apk
cd other
7za a -tzip "../place-apk-here-for-modding/unsigned%capp%" "../projects/%capp%/*" -mx%usrc%
if errorlevel 1 (
echo "������һ������������־ �����˵� ѡ��21��"
PAUSE
)
cd ..
goto si1
:oa1
cd other
echo ���ڴ�� Apk
rmdir /S /Q "../out/META-INF"
7za a -tzip "../place-apk-here-for-modding/unsigned%capp%" "../projects/%capp%/*" -mx%usrc%
if errorlevel 1 (
echo "������һ������������־ �����˵� ѡ��21��"
PAUSE
)
cd ..
:si1
cd other
echo ����ǩ�� Apk
java -Xmx%heapy%m -jar signapk.jar -w testkey.x509.pem testkey.pk8 ../place-apk-here-for-modding/unsigned%capp% ../place-apk-here-for-modding/signed%capp%
if errorlevel 1 (
echo "������һ������������־ �����˵� ѡ��21��"
PAUSE
)
DEL /Q "../place-apk-here-for-modding/unsigned%capp%"
cd ..
:ins1
echo ���ڵȴ��豸
adb wait-for-device
echo ���ڰ�װ Apk
adb install -r place-apk-here-for-modding/signed%capp%
if errorlevel 1 (
echo "������һ������������־ �����˵� ѡ��21��"
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
set /P INPUT=������ zipalign(z)���Ż� PNG(p)���Ƕ��� (zp)��: %=%
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
echo ��Ŀû�б����ã���ǰ��Ŀ��%capp% 
PAUSE
goto restart
:opt
IF NOT EXIST "%~dp0projects\%capp%" GOTO dirnada
mkdir temp
xcopy "%~dp0projects\%capp%\res\*.9.png" "%~dp0temp" /S /Y
cd other
echo �����Ż� Png
roptipng -o99 "../projects/%capp%/**/*.png"
cd ..
xcopy "%~dp0temp" "%~dp0projects\%capp%\res" /S /Y
rmdir temp /S /Q
goto restart
:noproj
echo ��ѡ��һ�� Apk �����˵� ѡ��22��
PAUSE
goto restart
:ap
echo ��������Ҫ��ȡ�� Apk ·��
echo ���磺 /system/app/launcher.apk
set /P INPUT=�������ͣ�%=%
echo ������ȡ Apk
adb pull %INPUT% "%~dp0place-apk-here-for-modding\something.apk"
if errorlevel 1 (
echo "������һ������������־ �����˵� ѡ��21��"
PAUSE
goto restart
)
:renameagain
echo ��Ϊ���ļ�����
echo ���� (launcher.apk)
set /P INPUT=�������ͣ�%=%
IF EXIST "%~dp0place-apk-here-for-modding\%INPUT%" (
echo �ļ��Ѵ��ڣ��볢����������
PAUSE
goto renameagain)
rename "%~dp0place-apk-here-for-modding\something.apk" %INPUT%
echo �����������Ϊ���ĵ�ǰ��Ŀ�� (y/n)?
set /P inab=�������ͣ�%=%
if %inab%==y (set capp=%INPUT%)
goto restart
:apu
echo ������ Adb ����·�����ļ���
echo ��������: /system/app/launcher.apk
set /P INPUT=�������ͣ�%=%
echo ���ڵȴ��豸
adb wait-for-device
adb remount
echo �������� Apk
adb push "place-apk-here-for-modding\unsigned%capp%" %INPUT%
if errorlevel 1 (
echo "������һ������������־ �����˵� ѡ��21��"
PAUSE
)
goto restart
:zipa
echo Zipaligning Apk
IF EXIST "%~dp0place-apk-here-for-modding\signed%capp%" zipalign -f 4 "%~dp0place-apk-here-for-modding\signed%capp%" "%~dp0place-apk-here-for-modding\signedaligned%capp%"

IF EXIST "%~dp0place-apk-here-for-modding\unsigned%capp%" zipalign -f 4 "%~dp0place-apk-here-for-modding\unsigned%capp%" "%~dp0place-apk-here-for-modding\unsignedaligned%capp%"

if errorlevel 1 (
echo "������һ������������־ �����˵� ѡ��21��"
PAUSE
)
DEL /Q "%~dp0place-apk-here-for-modding\signed%capp%"
DEL /Q "%~dp0place-apk-here-for-modding\unsigned%capp%"
rename "%~dp0place-apk-here-for-modding\signedaligned%capp%" signed%capp%
rename "%~dp0place-apk-here-for-modding\unsignedaligned%capp%" unsigned%capp%
goto restart
:ex
cd other
echo ���ڽ�� apk
IF EXIST "../projects/%capp%" (rmdir /S /Q "../projects/%capp%")
7za x -o"../projects/%capp%" "../place-apk-here-for-modding/%capp%"
if errorlevel 1 (
echo "������һ������������־ �����˵� ѡ��21��"
PAUSE
)
cd ..
goto restart
:zip
IF NOT EXIST "%~dp0projects\%capp%" GOTO dirnada
cls
echo 1��ϵͳ Apk (����ǩ��)
echo 2������ Apk (ɾ��ԭ��ǩ��������ǩ��)
SET /P menunr=��ѡ��һ��ѡ� 
IF %menunr%==1 (goto sys)
IF %menunr%==2 (goto oa)
:sys
echo ���ڴ�� Apk
cd other
7za a -tzip "../place-apk-here-for-modding/unsigned%capp%" "../projects/%capp%/*" -mx%usrc%
if errorlevel 1 (
echo "������һ������������־ �����˵� ѡ��21��"
PAUSE
)

cd ..
goto restart
:oa
cd other
echo ���ڴ�� Apk
rmdir /S /Q "../out/META-INF"
7za a -tzip "../place-apk-here-for-modding/unsigned%capp%" "../projects/%capp%/*" -mx%usrc%
if errorlevel 1 (
echo "������һ������������־ �����˵� ѡ��21��"
PAUSE
)

cd ..
goto restart
:ded
cd other
IF EXIST "%~dp0place-apk-here-for-modding\unsigned%capp%" (del /Q "%~dp0place-apk-here-for-modding\unsigned%capp%")
:temr
echo �� dependee apk �ļ�����ô��ڻ��������ļ�����·��
echo ���磺������Rosie.apk����com.htc.resources.apk�ϵ��˴���
set /P INPUT=�������ͣ�%=%
java -jar apktool.jar if %INPUT%
if NOT EXIST "%userprofile%\apktool\framework\2.apk" (
echo.
echo "�Բ����ǲ��� dependee apk �ļ���������һ��"
goto temr
)
echo ���ڷ����� Apk
java -Xmx%heapy%m -jar apktool.jar d ../place-apk-here-for-modding/%capp% ../projects/%capp%
if errorlevel 1 (
echo "������һ������������־ �����˵� ѡ��21��"
PAUSE
)
cd ..
goto restart
:de
cd other
DEL /Q "../place-apk-here-for-modding/signed%capp%"
DEL /Q "../place-apk-here-for-modding/unsigned%capp%"
IF EXIST "../projects/%capp%" (rmdir /S /Q "../projects/%capp%")
echo ���ڷ����� Apk
java -Xmx%heapy%m -jar apktool.jar d "../place-apk-here-for-modding/%capp%" "../projects/%capp%"
if errorlevel 1 (
echo "������һ������������־ �����˵� ѡ��21��"
PAUSE
)
cd ..
goto restart
:co
IF NOT EXIST "%~dp0projects\%capp%" GOTO dirnada
cd other
echo ���ڴ��� Apk
IF EXIST "%~dp0place-apk-here-for-modding\unsigned%capp%" (del /Q "%~dp0place-apk-here-for-modding\unsigned%capp%")
java -Xmx%heapy%m -jar apktool.jar b "../projects/%capp%" "%~dp0place-apk-here-for-modding\unsigned%capp%"
if errorlevel 1 (
echo "������һ������������־ �����˵� ѡ��21��"
PAUSE
)
echo ���Ǹ�ϵͳ Apk ^(y/n^)
set /P INPU=�������ͣ�%=%
if %INPU%==n (goto q1)
:nq1
echo ���˽��ļ�ǩ���������븴����
echo ����û���޸��κ������ļ�
echo �Ӷ�ȷ��������ԭʼ��apk�� 
echo # ���� ^(y/n^)
set /P INPUT1=�������ͣ�%=%
if %INPUT1%==y (call :nq2)
if %INPUT1%==n (call :nq3)
:nq2
rmdir /S /Q "%~dp0keep"
7za x -o"../keep" "../place-apk-here-for-modding/%capp%"
echo ��apk�ļ����������ļ��У����ᷢ�� 
echo һ���������ļ��С��������棬ɾ��  
echo һ�����������޸ģ��뿪��û���� 
echo ���ļ���������޸����κ�XML�� 
echo �Ǿ��������ļ��ڵ� resources.arsc 
echo ɾ�������֮�󣬰��س������� 
echo ��л���� 
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
echo ����ǩ�� Apk
java -Xmx%heapy%m -jar signapk.jar -w testkey.x509.pem testkey.pk8 ../place-apk-here-for-modding/unsigned%capp% ../place-apk-here-for-modding/signed%capp%
if errorlevel 1 (
echo "������һ������������־ �����˵� ѡ��21��"
PAUSE
)

DEL /Q "../place-apk-here-for-modding/unsigned%capp%"
cd ..
goto restart
:ins
echo ���ڵȴ��豸
adb wait-for-device
echo ���ڰ�װ Apk
adb install -r place-apk-here-for-modding/signed%capp%
if errorlevel 1 (
echo "������һ������������־ �����˵� ѡ��21��"
PAUSE
)
goto restart
:all
IF NOT EXIST "%~dp0projects\%capp%" GOTO dirnada
cd other
echo ���ڴ��� Apk
IF EXIST "%~dp0place-apk-here-for-modding\unsigned%capp%" (del /Q "%~dp0place-apk-here-for-modding\unsigned%capp%")
java -Xmx%heapy%m -jar apktool.jar b "../projects/%capp%" "%~dp0place-apk-here-for-modding\unsigned%capp%"
if errorlevel 1 (
echo "������һ������������־ �����˵� ѡ��21��"
PAUSE
goto restart
)
echo ����ǩ�� Apk
java -Xmx%heapy%m -jar signapk.jar -w testkey.x509.pem testkey.pk8 ../place-apk-here-for-modding/unsigned%capp% ../place-apk-here-for-modding/signed%capp%
if errorlevel 1 (
echo "������һ������������־ �����˵� ѡ��21��"
PAUSE
)
DEL /Q "../place-apk-here-for-modding/unsigned%capp%"
cd ..
echo ���ڵȴ��豸
adb wait-for-device
echo ���ڰ�װ Apk
adb install -r place-apk-here-for-modding/signed%capp%
if errorlevel 1 (
echo "������һ������������־ �����˵� ѡ��21��"
PAUSE
)
goto restart
:errjava
cls
echo �Ҳ��� Java , �������ܶ� Apk ǩ����ʹ�� ApkTool
PAUSE
goto restart
:erradb
cls
echo �Ҳ��� Adb , �������ܲ������ֻ��ϵ��ļ�
PAUSE
goto restart
:adbi
mode con:cols=48 lines=8
echo ���ڵȴ��豸
adb wait-for-device
set count=0
:loop
if "%~n1"=="" goto :endloop
echo ���ڰ�װ %~n1
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
@echo %~1 �Ż����
:quit
