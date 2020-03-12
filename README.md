SSHD Kerberitzat
@edt ASIX M11-SAD Curs 2019-2020

jorgepastorr/net19:nethost Servidor de serveis de xarxa, usant xinetd, redireccions, httpd, vsftp, ftpd, etc. S'utilitza per fer tests de connectivitat, xinetd, tcpwrappers, túnels ssh i iptables.

- serveis xinetd: echo(7), daytime(13) i chargen(19) stream (tcp).
- serveis xinetd: echo(7), daytime(13) i chargen(19) dgram (udp).
- serveis del paquet uw-imap: ipop3(110), imap(143), pop3s (995), imaps (993).
- servei web httpd(80).
- serveis xinetd redireccions: 2007 (7), 2013 (13) i 2080 (80). També 3080 (www.gmail.com 80)
- serveis xinetd redireccions bnd al loopback: 4007 (7), 4013 (13), 4080 (80).
- servei vsftpd(20,21).
- servei sshd(22).
- servei tftp (69).


Test

```
# telnet a.b.c.d port
# netstat -tan
# netstat -uan
# nmap localhost
# nmap a.b.c.d
```

```bash
[root@nethost docker]# netstat -tan4 | sort
Active Internet connections (servers and established)
Proto Recv-Q Send-Q Local Address           Foreign Address         State      
tcp        0      0 0.0.0.0:2007            0.0.0.0:*               LISTEN     
tcp        0      0 0.0.0.0:2013            0.0.0.0:*               LISTEN     
tcp        0      0 0.0.0.0:2080            0.0.0.0:*               LISTEN     
tcp        0      0 0.0.0.0:22              0.0.0.0:*               LISTEN     
tcp        0      0 0.0.0.0:3080            0.0.0.0:*               LISTEN     
tcp        0      0 0.0.0.0:80              0.0.0.0:*               LISTEN     
tcp        0      0 127.0.0.1:4007          0.0.0.0:*               LISTEN     
tcp        0      0 127.0.0.1:4013          0.0.0.0:*               LISTEN     
tcp        0      0 127.0.0.1:4080          0.0.0.0:*               LISTEN     
```

Execució:

Sense mapejar els ports

```bash
docker netweork create mynet
docker run --rm --name nethost -h nethost --net mynet -d edtasixm11/net18:nethost
```

Amb ports mapejats

```bash
docker netweork create mynet
docker run --rm --name nethost -h nethost --net mynet -p 7:7 -p 13:13 -p 80:80 -d edtasixm11/net18:nethost
```
