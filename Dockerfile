#
# Minimum Docker image to build Android AOSP
#
FROM jimlin95/nf7v:v2
MAINTAINER Jim Lin <jim_lin@quantatw.com>

RUN mkdir -p /home/jenkins/otatools/out/host/linux-x86/bin
RUN mkdir -p /home/jenkins/otatools/out/host/linux-x86/framework 
ADD bin/  /home/jenkins/otatools/out/host/linux-x86/bin
ADD framework/  /home/jenkins/otatools/out/host/linux-x86/framework

RUN chown -R jenkins:jenkins /home/jenkins/otatools
