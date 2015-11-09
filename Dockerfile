FROM jeanblanchard/java:8
MAINTAINER  Edward Xie

ENV   	SOAPUI_VERSION	5.2.0
RUN     mkdir -p /sbic/software

RUN	apk add --update curl && \
	curl -jksSL http://downloads.sourceforge.net/project/soapui/soapui/${SOAPUI_VERSION}/SoapUI-${SOAPUI_VERSION}-linux-bin.tar.gz \
	      | gunzip -c - | tar -xf - -C /opt && \
	      ln -s SoapUI-${SOAPUI_VERSION} SoapUI && apk del curl && rm -rf /var/cache/apk/*
	      
	      

ENV	SOAPUI_HOME	/sbic/software/SoapUI
ENV	PATH	$PATH:$SOAPUI_HOME/bin

WORKDIR	/sbic/software/SoapUI
