#!/bin/sh
#wait for nginx to start; run "slow" first
sleep 5;
curl -o /dev/null -s -w "Fast request 1: Response code %{response_code}\n" http://nginx/fast.php
curl -o /dev/null -s -w "Fast request 2: Response code %{response_code}\n" http://nginx/fast.php
curl -o /dev/null -s -w "Fast request 3: Response code %{response_code}\n" http://nginx/fast.php

