#!/bin/bash
grafana-cli admin reset-admin-password [PASSWORD]
echo GRAFANA PASSWORD CHANGED $(date)
bash /run.sh