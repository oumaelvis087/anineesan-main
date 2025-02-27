#!/bin/bash

# Find Java 8 installation if available
if [ -d "/Library/Java/JavaVirtualMachines/temurin-8.jdk" ]; then
    JAVA_HOME="/Library/Java/JavaVirtualMachines/temurin-8.jdk/Contents/Home"
elif [ -d "/Library/Java/JavaVirtualMachines/adoptopenjdk-8.jdk" ]; then
    JAVA_HOME="/Library/Java/JavaVirtualMachines/adoptopenjdk-8.jdk/Contents/Home"
else
    JAVA_HOME=$(java -XshowSettings:properties -version 2>&1 | grep 'java.home' | awk '{print $3}')
fi

"$JAVA_HOME/bin/java" \
    -Djava.security.policy=anineesan.policy \
    -Dfile.encoding=UTF-8 \
    -jar Anineesan.jar
