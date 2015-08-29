FROM edwxie/jdk
MAINTAINER  Edward Xie

RUN     mkdir -p /sbic/software

RUN     cd /sbic/software && \
        wget http://downloads.sourceforge.net/project/soapui/soapui/5.2.0/SoapUI-5.2.0-linux-bin.tar.gz && \
	      tar -xvf SoapUI-5.2.0-linux-bin.tar.gz && \
	      ln -s SoapUI-5.2.0 SoapUI && rm -f SoapUI-5.2.0-linux-bin.tar.gz

ENV	SOAPUI_HOME	/sbic/software/SoapUI
ENV	PATH	$PATH:$SOAPUI_HOME/bin

WORKDIR	/sbic/software/SoapUI
