FROM python:3

RUN pip install --no-cache-dir python-openstackclient python-heatclient

CMD [ "openstack" ]