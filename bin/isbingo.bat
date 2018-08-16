@echo off
cd /d %~dp0

rem ------------------------------------------------------------------------
rem Infoseek Bingo で開く(ログイン済みなら自動でBINGOスタート）
rem ------------------------------------------------------------------------

start chrome.exe "https://isbingo.www.infoseek.co.jp/isbingo/getCard"

exit 0
