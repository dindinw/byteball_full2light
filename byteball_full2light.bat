@set OUT=byteball_full2light.dump
@echo dump_file : %OUT%

@if exist byteball-light.sqlite (
  @echo found byteball light database
  sqlite3.exe byteball-light.sqlite ".read %OUT%"
) else (
  @if exist byteball.sqlite (
     @echo fullnode byteball wallet found, try to export data 
     @echo off > conf.json
     @echo { >> conf.json
     @echo    "bLight": true >> conf.json
     @echo } >> conf.json
     sqlite3.exe byteball.sqlite ".dump wallets"|findstr /R "^INSERT" > %OUT%
     sqlite3.exe byteball.sqlite ".dump wallet_signing_paths"|findstr /R "^INSERT" >> %OUT%
     sqlite3.exe byteball.sqlite ".dump my_addresses"|findstr /R "^INSERT" >> %OUT%
     sqlite3.exe byteball.sqlite ".dump extended_pubkeys"|findstr /R "^INSERT" >> %OUT%
  ) else (
     @echo please put the script into your fullnode byteball data folder.
  )
)
