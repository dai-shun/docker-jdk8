FROM centos

MAINTAINER daishun <daishun9@gmail.com>

COPY jdk1.8.0_131 /home/jdk1.8.0_131

ENV JAVA_HOME=/home/jdk1.8.0_131
ENV JRE_HOME=$JAVA_HOME/jre
ENV CLASS_PATH=.:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar:$JRE_HOME/lib
ENV PATH=$PATH:$JAVA_HOME/bin:$JRE_HOME/bin

CMD "java" "-version"