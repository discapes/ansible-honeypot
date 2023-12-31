#!/bin/bash
# grep -v " - " is to exclude inactive hosts
ip=$(sudo virsh net-dhcp-leases default | grep -v " - " | grep -Po '(\d{1,3}\.){3}\d{1,3}')
sed "s/QQQ/$ip/" inv.tmpl.yml > inv.yml
ansible-playbook -i inv.yml site.yml "$@"