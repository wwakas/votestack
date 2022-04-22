#!/bin/bash
grafana-cli admin reset-admin-password TEST123!
echo GRAFANA PASSWORD CHANGED $(date)
bash /run.sh