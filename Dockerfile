FROM docker.elastic.co/beats/metricbeat:5.3.0
MAINTAINER Cristina González <cristina.gonzalez@liferay.com>

COPY metricbeat.yml /usr/share/metricbeat/metricbeat.yml

USER root