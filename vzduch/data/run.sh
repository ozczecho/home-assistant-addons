#!/usr/bin/env bashio
set -e

bashio::log.info "Airtouch configuration..."

AIRTOUCH_IP=$(bashio::config 'airtouch_ip')
AIRTOUCH_PORT=$(bashio::config 'airtouch_port') 
AIRTOUCH_LOGLEVEL=$(bashio::config 'logLevel') 

export DOTEK_airTouch__localHost=$AIRTOUCH_IP
export DOTEK_airTouch__localPort=$AIRTOUCH_PORT
export DOTEK_Serilog__MinimumLevel=$AIRTOUCH_LOGLEVEL
export DOTNET_SYSTEM_GLOBALIZATION_INVARIANT=1

exec ./VzduchDotek.Net
