#!/bin/bash
yum update -y
amazon-linux-extrax install ansible2 -y
systemctl start ansible
systemctl enable ansible