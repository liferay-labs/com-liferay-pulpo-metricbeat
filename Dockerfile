FROM docker.elastic.co/beats/metricbeat:6.2.2
MAINTAINER Cristina González <cristina.gonzalez@liferay.com>

COPY metricbeat.yml /usr/share/metricbeat/metricbeat.yml

USER root

RUN chmod go-w /usr/share/metricbeat/metricbeat.yml

CMD ./metricbeat -c /usr/share/metricbeat/metricbeat.yml