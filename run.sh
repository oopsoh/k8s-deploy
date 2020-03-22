#!/bin/bash
ansible-playbook -i inventory/abb.yaml common.yaml --skip-tags "reboot"
