#!/bin/sh

# WARNING: This file is created by the Configuration Wizard.
# Any changes to this script may be lost when adding extensions to this configuration.

# Hack JPA begin
echo Hack JPA begin

WLS_MODULES="/opt/bea/wls1036/modules"
export WLS_MODULES

PRE_CLASSPATH="${WLS_MODULES}/hibernate-jpa-2.1-api-1.0.0.Final.jar"
export PRE_CLASSPATH

echo PRE_CLASSPATH=${PRE_CLASSPATH}

echo Hack JPA End
# Hack JPA END

WLS_USER="weblogic"

export WLS_USER

WLS_PW="weblogic1"

export WLS_PW

DOMAIN_HOME="/opt/bea/wls1036/user_projects/domains/asms_domain"

${DOMAIN_HOME}/bin/startWebLogic.sh $*