#!/usr/bin/env bash

sudo apt update

sudo apt install git

curl -L https://github.com/dandavison/delta/releases/download/0.18.2/delta-0.18.2-x86_64-unknown-linux-gnu.tar.gz -s | sudo tar xzvf - --strip 1 -C /usr/local/bin --wildcards "*/delta"
