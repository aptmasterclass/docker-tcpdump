Malutki obraz z tcpdumpem czyli snifferem pakietów na pokładzie.

Ilustracja do https://aptmasterclass.com/ oraz https://blog.aptmasterclass.com/, na przykład można próbować polować na hasła:

```
drg@kilo:~$ docker run --net=host corfr/tcpdump -i any -A -l |grep -i --color "user\|pass\|authorization\|login"
tcpdump: verbose output suppressed, use -v or -vv for full protocol decode
listening on any, link-type LINUX_SLL (Linux cooked), capture size 262144 bytes
Authorization: Basic YWRtaW46YWRtaW4=
User-Agent: curl/7.63.0
06:35:57.575178 IP kilo.53372 > ftp.wp.pl.21: Flags [P.], seq 1:14, ack 45, win 229, options [nop,nop,TS val 1425126781 ecr 2612321835], length 13: FTP: USER wpuser
T..}...+USER wpuser
06:35:57.610251 IP ftp.wp.pl.21 > kilo.53372: Flags [P.], seq 45:79, ack 14, win 114, options [nop,nop,TS val 2612325393 ecr 1425126781], length 34: FTP: 331 Password required for wpuser
....T..}331 Password required for wpuser
06:36:02.650408 IP kilo.53372 > ftp.wp.pl.21: Flags [P.], seq 14:39, ack 79, win 229, options [nop,nop,TS val 1425131856 ecr 2612325393], length 25: FTP: PASS Supertajne/Haslo!!
T..P....PASS Supertajne/Haslo!!
06:36:02.685258 IP ftp.wp.pl.21 > kilo.53372: Flags [P.], seq 79:101, ack 39, win 114, options [nop,nop,TS val 2612330468 ecr 1425131856], length 22: FTP: 530 Login incorrect.
....T..P530 Login incorrect.
```
