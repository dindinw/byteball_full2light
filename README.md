# byteball_full2light

script to convert byteball fullnode wallet into light wallet.

NOTE !!! use the script on yourself decision, it may be dangous, and cause money lost. please don't use the script if you has any concern. The author is not responsible for the consequences of use of this script. 
请注意该脚本并不能保证工作，并且使用该脚本有很大的危险性，有可能造成无法挽回的财产损失。

The script only test on MacOSX, it should also works for Linux (and Windows if cgwin or migw installed). 
The script only test on byteball 1.8.2, don't know if it works for other versions. 
本脚本在Mac操作系统基于雪球1.8.2版测试通过，其它雪球版本和操作系统的并未进行测试。

# How to use

1. make sure your wallet is a fullnode wallet. make sure you already full-backed up your wallet, and make sure you had already backed-up all your data inside your byteball data folder. 

2. copy the script into your byteball data folder, you need to run the script inside your byteball data folder.

   *  macOS: ~/Library/Application Support/byteball
   *  Linux: ~/.config/byteball
   *  Windows: %LOCALAPPDATA%\byteball

3. stop your byteball wallet before using the script

4. execute the script 

5. restart your byteball wallet, then an error message will be shown. Don't worry, just close your wallet.

6. then execute the script again

7. restart your byteball wallet, If everything works, it should already be a light wallet.
