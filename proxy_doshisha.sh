#!/bin/sh
export HTTP_PROXY="http://proxyr.drm.doshisha.ac.jp:8080"
export HTTPS_PROXY="https://proxyr.drm.doshisha.ac.jp:8080"
export http_proxy="http://proxyr.drm.doshisha.ac.jp:8080"
export https_proxy="https://proxyr.drm.doshisha.ac.jp:8080"
git config --global http.proxy http://proxyr.drm.doshisha.ac.jp:8080
git config --global https.proxy https://proxyr.drm.doshisha.ac.jp:8080
git config --global url."https://".insteadOf git://
