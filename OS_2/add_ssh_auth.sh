#! /usr/bin/env bash

#ssh key 생성
sshpass -p vagrant ssh -T -o StrictHostKeyChecking=no vagrant@192.168.0.11
sshpass -p vagrant ssh -T -o StrictHostKeyChecking=no vagrant@192.168.0.12
sshpass -p vagrant ssh -T -o StrictHostKeyChecking=no vagrant@192.168.0.13
sshpass -p vagrant ssh -T -o StrictHostKeyChecking=no vagrant@192.168.0.14
sshpass -p vagrant ssh -T -o StrictHostKeyChecking=no vagrant@192.168.0.15
sshpass -p vagrant ssh -T -o StrictHostKeyChecking=no vagrant@192.168.0.16