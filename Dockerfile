From debian
MAINTAINER docker@deliverous.com
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && apt-get -y dist-upgrade && apt-get install -y python-pip python-dev supervisor exim4 && apt-get clean

RUN pip install graphite-beacon
RUN pip install supervisor-stdout

# Supervisord
ADD src/supervisor.conf /etc/supervisor/conf.d/deliverous.conf

# Conf Exim
ADD src/update-exim4.conf.conf /etc/exim4/update-exim4.conf.conf
ADD src/exim4 /etc/default/exim4

CMD ["/usr/bin/supervisord"]
VOLUME ["/srv/alerting"]
