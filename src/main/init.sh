#!/usr/bin/env bash

# initialize project
export GOPATH=`pwd`/../../

# go_get function
function go_get() {
    echo "go get ${1} ..."
    if [ ! -d ${GOPATH}/${1} ]
    then
        go get ${1}
    fi
}

# TeaGO
go_get "github.com/iwind/TeaGo"
go_get "github.com/pquerna/ffjson"

# fastcgi
go_get "github.com/iwind/gofcgi"

# geo ip
go_get "github.com/oschwald/maxminddb-golang"
go_get "github.com/oschwald/geoip2-golang"

# mongodb
# go_get "github.com/mongodb/mongo-go-driver"
# echo "   [TeaWeb]Don't worry, you can ignore 'no Go files' warning in mongodb"

# system cpu, memory, disk ...
go_get "github.com/shirou/gopsutil"

# javascript
go_get "github.com/robertkrimen/otto"

# msg pack
go_get "github.com/vmihailenco/msgpack"

# redis
go_get "github.com/go-redis/redis"

# markdown
go_get "github.com/russross/blackfriday"

# fsnotify
go_get "github.com/fsnotify/fsnotify"

# yaml
go_get "github.com/go-yaml/yaml"

# websocket
go_get "github.com/gorilla/websocket"

# TeaWeb
go_get "github.com/TeaWeb/code"
echo "   [TeaWeb]Don't worry, you can ignore 'no Go files' warning in TeaWeb code"

go_get "github.com/TeaWeb/plugin"
go_get "github.com/TeaWeb/uaparser"

echo "[done]"