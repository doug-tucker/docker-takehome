# docker-takehome

Problem 5 answers:
- To get the version of the OS the nginx container is running, I used the command `uname -a`
- To verify which ports were open, I noticed a lot of tools (lsof, netstat, nmap) were not available. apt-get update fixed that, then downloaded 'net-tools'. from there, used netstat to see which ports were listening - 80 and 443 are! 
- To verify the port forwarding was working properly, I simply did a wget on localhost:80 and localhost:443 (had to add a --no-check-certificate), both properly downloaded index.html from jupyter
- To verify the https proxy was working from outside, I got the IP address from earlier (192.16.99.100 in this case) and put https:// in front of it. Got a cert warning, clicked "add exception", and the page loads just fine.

