#!/bin/sh
#wait for nginx to start; run "slow" first
sleep 2;
curl -o /dev/null -s -w "Slow request 1: Response code %{response_code}\n" http://nginx/slow.php &
curl -o /dev/null -s -w "Slow request 2: Response code %{response_code}\n" http://nginx/slow.php &
curl -o /dev/null -s -w "Slow request 3: Response code %{response_code}\n" http://nginx/slow.php &
curl -o /dev/null -s -w "Slow request 4: Response code %{response_code}\n" http://nginx/slow.php &
# wait for all to be done, or nginx will log 499
sleep 60;
