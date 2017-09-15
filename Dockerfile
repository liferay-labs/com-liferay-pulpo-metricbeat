FROM docker.elastic.co/beats/metricbeat:5.3.0
MAINTAINER Cristina González <cristina.gonzalez@liferay.com>

COPY metricbeat.yml /usr/share/metricbeat/metricbeat.yml
COPY modules.d/* /usr/share/metricbeat/conf.d/

USER root

RUN chmod go-w /usr/share/metricbeat/metricbeat.yml

CMD ./metricbeat -c /usr/share/metricbeat/metricbeat.yml