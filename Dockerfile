FROM jeanblanchard/java:8
MAINTAINER  Edward Xie

ENV   	SOAPUI_VERSION	5.2.0
RUN     

RUN	mkdir -p /opt && apk add --update curl && \
	curl -jksSL http://downloads.sourceforge.net/project/soapui/soapui/${SOAPUI_VERSION}/SoapUI-${SOAPUI_VERSION}-linux-bin.tar.gz \
	      | gunzip -c - | tar -xf - -C /opt && \
	      ln -s /opt/SoapUI-${SOAPUI_VERSION} /opt/SoapUI && apk del curl && rm -rf /var/cache/apk/*
	      
	      

ENV	SOAPUI_HOME	/opt/SoapUI
ENV	PATH	$PATH:$SOAPUI_HOME/bin

WORKDIR	/opt/SoapUI
