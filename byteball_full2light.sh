#!/bin/bash
OUT=byteball_full2light.dump
if [ -e byteball-light.sqlite ] && [ -e $OUT ]; then
    sqlite3 byteball-light.sqlite ".read $OUT"
    exit 0
fi

cat <<EOF > conf.json 
{
	"bLight": true
}
EOF
sqlite3 byteball.sqlite '.dump wallets' |grep ^INSERT > $OUT
sqlite3 byteball.sqlite '.dump wallet_signing_paths' |grep ^INSERT >> $OUT 
sqlite3 byteball.sqlite '.dump my_addresses' |grep ^INSERT >> $OUT
sqlite3 byteball.sqlite '.dump extended_pubkeys' |grep ^INSERT >> $OUT

