@echo off
pip install virtualenv
python3 -m virtualenv env
call env\Scripts\activate.bat
pip install selenium bs4 numpy pandas fake-useragent

curl -O "https://chromedriver.storage.googleapis.com/106.0.5249.61/chromedriver_win32.zip"
powershell Expand-Archive -Path "chromedriver_win32.zip" -Destination "."
del chromedriver_win32.zip
echo setup finished...
pause