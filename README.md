# How to deploy

Deploy in a specific order
1-metallb
2-services
-- prefect
-- prometheus
3- ingress

Currently, you have to use port forwarding to expose sevices since externalip that metallb provides does not route traffic correctly due to an unknown reason
