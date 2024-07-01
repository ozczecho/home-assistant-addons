#!/usr/bin/env bashio
set -e

bashio::log.info "Airtouch configuration..."

AIRTOUCH_HOST=$(bashio::config 'airtouch_host')
AIRTOUCH_PORT=$(bashio::config 'airtouch_port') 
AIRTOUCH_LOGLEVEL=$(bashio::config 'logLevel') 

export DOTEK_airTouch__localHost=$AIRTOUCH_HOST
export DOTEK_airTouch__localPort=$AIRTOUCH_PORT
export DOTEK_Serilog__MinimumLevel__Default=$AIRTOUCH_LOGLEVEL
export DOTNET_SYSTEM_GLOBALIZATION_INVARIANT=1

exec ./VzduchDotek.Net