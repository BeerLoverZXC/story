#!/bin/sh
tmux new-session -d -s story-geth "$HOME/go/bin/geth --odyssey --syncmode full --http --http.api eth,net,web3,engine --http.vhosts '*' --http.addr 0.0.0.0 --http.port 52545 --authrpc.port 52551 --ws --ws.api eth,web3,net,txpool --ws.addr 0.0.0.0 --ws.port 52546"
cosmovisor run run
