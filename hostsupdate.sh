#!/bin/bash
curl https://raw.githubusercontent.com/VeleSila/yhosts/master/hosts.txt | sed "/#/d" | sed "/@/d" | awk '{print $2}' > 1111
curl https://raw.githubusercontent.com/Goooler/1024_hosts/master/hosts | sed 's/\r//g' | awk '{print $2}' > 2222
curl https://easylist-downloads.adblockplus.org/easylistchina+easylist.txt | grep ^\|\|[^\*]*\^$ | sed -e 's/||//g' |sed -e 's/\^//g' > 3333
root@Cloudcone:~# curl https://raw.githubusercontent.com/cjx82630/cjxlist/master/cjx-annoyance.txt | grep ^\|\|[^\*]*\^$ | sed -e 's/||//g' -e 's/\^//g' > 4444
cat 1111 2222 3333 4444 > 5555
cat 5555|sort|awk '!a[$0]++'|awk '{print "0.0.0.0 " $0}' > hosts_AD
rm 1111 2222 3333 4444 5555