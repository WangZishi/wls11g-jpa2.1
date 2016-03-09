FROM riddick/weblogic11g_asms:latest
MAINTAINER Wang Zishi "ynh.2@outlook.com"

WORKDIR /opt/bea/wls1036
COPY jar/hibernate-jpa-2.1-api-1.0.0.Final.jar ./modules

WORKDIR /opt/bea/wls1036/user_projects/domains/asms_domain
RUN rm startWebLogic.sh
COPY startWebLogic.sh ./

EXPOSE 7001
CMD ["/bin/bash ./startWebLogic.sh"]
