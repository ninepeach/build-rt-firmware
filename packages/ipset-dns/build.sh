export LD_LIBRARY_PATH=/opt/brcm-arm/lib
echo $PATH | grep -qF /opt/brcm-arm/bin || export PATH=$PATH:/opt/brcm-arm/bin
echo $PATH | grep -qF /opt/brcm-arm/arm-brcm-linux-uclibcgnueabi/bin || export PATH=$PATH:/opt/brcm-arm/arm-brcm-linux-uclibcgnueabi/bin

arm-brcm-linux-uclibcgnueabi-gcc -lmnl -I/home/tomato/freshtomato-arm/release/src-rt-6.x.4708/router/libmnl/staged/usr/include -I/home/tomato/freshtomato-arm/release/src-rt-6.x.4708/router/include -L/home/tomato/freshtomato-arm/release/src-rt-6.x.4708/router/libmnl/staged/usr/lib -I/home/tomato/freshtomato-arm/release/src-rt-6.x.4708/linux/linux-2.6.36/include/uapi -I/home/tomato/freshtomato-arm/release/src-rt-6.x.4708/linux/linux-2.6.36/include -I/home/tomato/freshtomato-arm/release/src-rt-6.x.4708/linux/linux-2.6.36/include/uapi -I/home/tomato/freshtomato-arm/release/src-rt-6.x.4708/linux/linux-2.6.36/include -Os -Wall -I/home/tomato/freshtomato-arm/release/src-rt-6.x.4708/router/libnfnetlink/include -I/home/tomato/freshtomato-arm/release/src-rt-6.x.4708/router/libnetfilter_conntrack/include ipset-dns.c -o ipset-dns