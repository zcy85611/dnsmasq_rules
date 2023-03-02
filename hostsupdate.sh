#!/bin/bash
curl https://raw.githubusercontent.com/VeleSila/yhosts/master/hosts.txt | sed "/#/d" | sed "/@/d" | awk '{print $2}' > 1111
curl https://raw.githubusercontent.com/Goooler/1024_hosts/master/hosts | sed 's/\r//g' | awk '{print $2}' > 2222
curl https://easylist-downloads.adblockplus.org/easylistchina+easylist.txt | grep ^\|\|[^\*]*\^$ | sed -e 's/||//g' |sed -e 's/\^//g' > 3333
curl https://raw.githubusercontent.com/cjx82630/cjxlist/master/cjx-annoyance.txt | grep ^\|\|[^\*]*\^$ | sed -e 's/||//g' -e 's/\^//g' > 4444
curl https://raw.githubusercontent.com/AdAway/adaway.github.io/master/hosts.txt|tail -n +25 | sed "/#/d" | sed '/^s*$/d' | awk '{print $2}' > 5555
cat 1111 2222 3333 4444 5555 > 6666
sed -i "/down.sandai.net/d" 6666
sed -i "/jf365.boc.cn/d" 6666
sed -i "/as.boc.cn/d" 6666
sed -i "/fex.bdstatic.com/d" 6666
sed -i "/paypal/d" 6666
sed -i "/js.braintreegateway.com/d" 6666
sed -i "/jssdkcdns.mparticle.com/d" 6666
sed -i "/jssdkcdn.mparticle.com/d" 6666 
sed -i "/gm.mmstat.com/d" 6666 
sed -i "/log.mmstat.com/d" 6666 
sed -i "/ws.mmstat.com/d" 6666
sed -i "/asearch.alicdn.com/d" 6666
sed -i "/wgo.mmstat.com/d" 6666
sed -i "/t.uc.cn/d" 6666
sed -i "/oth.eve.mdt.qq.com/d" 6666
sed -i "/android.bugly.qq.com/d" 6666
sed -i "/xiaomi.com/d" 6666
sed -i "/miui.com/d" 6666
sed -i "/taobao.com/d" 6666
sed -i "/aliyun/d" 6666
cat 6666|sort|sed -e '/host/d'|awk '!a[$0]++'|awk '{print "0.0.0.0 " $0}' > hosts_AD
rm 1111 2222 3333 4444 5555 6666
