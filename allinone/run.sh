#!/bin/bash

ansible-galaxy install -r requirements.yml -p roles
ansible-playbook trystack.yml

# Edit inventory.yml with the external IP of the created instance, then run
ansible-playbook -i inventory.yml playbook.yml
