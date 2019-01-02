###############################################
# Robot Framework Hub Container (using Python 3)
#
#
# DISCLAIMER:
# I am not associated to Robot Framework Hub project.
# More information about RF Hub available at
# https://github.com/boakley/robotframework-hub
###############################################
FROM ubuntu:bionic

MAINTAINER Grzegorz Olszewski <grzegorz@olszewski.in>

RUN apt-get update & apt-get install -y python3 python3-pip
RUN pip3 install https://github.com/MaciejWiczk/robotframework-hub/zipball/master

EXPOSE 7070

VOLUME /keywords

CMD python3 -m rfhub -i 0.0.0.0 /keywords &
