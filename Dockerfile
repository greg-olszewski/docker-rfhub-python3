###############################################
# Robot Framework Hub Container (using Python 3)
#
#
# DISCLAIMER:
# I am not associated to Robot Framework Hub project.
# More information about RF Hub available at
# https://github.com/boakley/robotframework-hub
###############################################
FROM python:3.7

MAINTAINER Grzegorz Olszewski <grzegorz@olszewski.in>

RUN pip install --upgrade pip
RUN pip install https://github.com/MaciejWiczk/robotframework-hub/zipball/master

EXPOSE 7070

VOLUME /keywords

CMD python -m rfhub -i 0.0.0.0 /keywords &
