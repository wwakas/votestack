# votestack
A sample C# app deployed alongside with monitoring stack (grafana, prometheus, swarmpit) on docker swarm.

Source of app code - https://github.com/dockersamples/example-voting-app

Prequisites:  
> Ubuntu (or Debian based distro) VM (same or newer than v18.04) with at least 2GB RAM & 1VCPU  
> Docker installed (at least v20.10)  
> SWARM initialized  
> Ports that need to be opened: 5000, 5001, 3000, 3001, 3003  
  
Manual deployment:  
APP STACK:  
> *Build necessary images: worker(tag: reworked/examplevotingapp_worker) & result(tag: reworked/examplevotingapp_result)  
> *Deploy stack from file: app.yml  

MONITORING STACK:  
> *Change default admin password in configuration files: /configs/grafana/grafana.ini (line 220) & /configs/grafana/password.sh  
> *Deploy stack from file: monitoring.yml  

SWARMPIT STACK:  
> *Deploy stack from file: swarmpit.yml  

APP:  
> VOTE: http://localhost:5000  
> RESULT: http://localhost:5001  
GRAFANA:  
> http://localhost:3000  
PROMETHEUS:  
> http://localhost:3001  
SWARMPIT:  
> http://localhost:3003  


HOW TO PROPERLY DEPLOY USING ssl_enabled BRANCH:

> *add certificate(named server.crt) & pkey(named server.key) in: monitoring/configs/prometheus/certs  
> *add certificate and pkey in monitoring/configs/grafana/datasource.yaml  
> *pass valid domain name (monitoring/configs/grafana/grafana.ini) in line number 41  
