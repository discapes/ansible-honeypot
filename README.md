# ansible-honeypot

This repository contains two roles useful for setting up a simple honeypot machine. The role `manager` is a machine that is accessible from the public internet. It functions as both a tunnel to the honeypot, and stores the logs from there. `honeypot` is a machine that sends all of its log to `manager`. 

TODO more info