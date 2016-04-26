#!/usr/bin/liquidsoap

set("server.telnet", true)

set("log.file.path", "./liq.log")

output.icecast(%mp3,
    host="localhost",
    port=8000,
    password="Bgm555",
    mount="test",
    mksafe(playlist("playlist.pls")))

output.icecast(%mp3,
    host="localhost",
    port=8000,
    password="Bgm555",
    mount="test2",
    mksafe(playlist("playlist.pls")))
