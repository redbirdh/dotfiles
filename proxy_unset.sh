#!/bin/sh
unset HTTP_PROXY
unset HTTPS_PROXY
unset http_proxy
unset https_proxy
git config --global --unset http.proxy
git config --global --unset https.proxy
git config --global --unset url."https://".insteadOf git://
