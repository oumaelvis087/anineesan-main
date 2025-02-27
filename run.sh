#!/bin/bash
java \
  -Djava.security.policy=anineesan.policy \
  -cp "Anineesan.jar:annotations-15.0.jar:jsoup-1.10.2.jar" \
  com.Main
