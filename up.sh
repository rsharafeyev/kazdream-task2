#!/usr/bin/env bash

clear
echo "Starting virtual machines"
vagrant up
vagrant status > /dev/null
ping -c 1 192.168.33.11 > /dev/null
ping -c 1 192.168.33.12 > /dev/null
ping -c 1 192.168.33.13 > /dev/null
echo "Starting ansible playbook"
ansible-playbook -i hosts.txt playbook.yml
