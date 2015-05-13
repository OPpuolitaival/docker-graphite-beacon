docker-graphite-beacon
======================

Build tip:
Go to src folder and run "docker build .."

It's a simple alerting system for Graphite metrics. 
Build a config.json file and run :
  
    docker run -v /path/to/config.json:/srv/alerting/etc/config.json deliverous/graphite-beacon
 
