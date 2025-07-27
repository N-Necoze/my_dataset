@echo off
:: Gitのあるリポジトリのディレクトリへ移動
cd /d D:\01.開発\98my_dataset

:: 変更したCSVファイルだけを add
git add numbers_dataset.csv

:: 現在時刻を取得してコミットメッセージに利用（簡易）
for /f %%i in ('powershell -command "Get-Date -Format yyyy-MM-dd_HH-mm-ss"') do set NOW=%%i

:: commit & push
git commit -m "Auto update on %NOW%"
git push origin main

:: 完了表示
echo CSVファイルを自動でコミット＆プッシュしました。
pause