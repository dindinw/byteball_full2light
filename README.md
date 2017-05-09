# byteball_full2light

script to convert byteball fullnode wallet into light wallet.

NOTE !!! use the script on yourself decision, it may be dangous, and cause money lost. please don't use the script if you has any concern. The author is not responsible for the consequences of use of this script. 
请注意该脚本并不能保证工作，并且使用该脚本有很大的危险性，有可能造成无法挽回的财产损失。

The script only test on MacOSX (byteball_full2light.sh) and Windows7 64bits (byteball_full2light.bat) it should also work for Linux. 
The script only test on byteball 1.8.2, don't know if it works for the other byteball versions. 
本脚本在Mac和Window7环境下，基于雪球1.8.2版测试通过，其它雪球版本和操作系统并未进行测试。

The script can not handle blackbyte, don't use it for bbyte.
本脚本不能恢复黑球。

# How to use

1. make sure your wallet is a fullnode wallet. make sure you already full-backed up your wallet, and make sure you had already backed-up all your data inside your byteball data folder. 

2. please install the sqlite command-line tools before execute the script, the script depends on the sqlite.
  
  *  macOS: `brew install sqlite`
  *  Ubuntu: `sudo apt-get install sqlite3 libsqlite3-dev`
  *  Windows: download `https://www.sqlite.org/2017/sqlite-tools-win32-x86-3180000.zip`
  
3. copy the script into your byteball data folder, you need to run the script inside your byteball data folder. Please use `byteball_full2light.sh` for Mac/Linux , and `byteball_full2light.bat` for windows.

   *  macOS: `~/Library/Application Support/byteball`
   *  Linux: `~/.config/byteball`
   *  Windows: `%LOCALAPPDATA%\byteball`

4. stop your byteball wallet before using the script

5. execute the script 

6. restart your byteball wallet, then an error message will be shown. Don't worry, just close your wallet.

7. then execute the script again

8. restart your byteball wallet, If everything works, it should already be a light wallet.
