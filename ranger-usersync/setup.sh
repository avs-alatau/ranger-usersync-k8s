#!/bin/bash

# Licensed to the Apache Software Foundation (ASF) under one or more
# contributor license agreements.  See the NOTICE file distributed with
# this work for additional information regarding copyright ownership.
# The ASF licenses this file to You under the Apache License, Version 2.0
# (the "License"); you may not use this file except in compliance with
# the License.  You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
cat /opt/apache-ranger/install.properties.tmpl > /opt/apache-ranger/ranger-current-usersync/install.properties && chmod 0775 /opt/apache-ranger/ranger-current-usersync/install.properties
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
if [ "${JAVA_HOME}" == "" ]
then
	echo "JAVA_HOME environment property not defined, aborting installation."
	exit 1
elif [ ! -d "${JAVA_HOME}" ]
then
	echo "JAVA_HOME environment property was set incorrectly, aborting installation."
	exit 1
else
	export JAVA_HOME
	PATH="${JAVA_HOME}/bin:${PATH}"
	export PATH
fi
