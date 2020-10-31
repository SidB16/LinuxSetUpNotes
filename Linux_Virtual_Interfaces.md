As the web’s popularity grew, everybody wanted to have a
web site, and overnight, thousands of companies became web hosting providers.

Providers quickly realized that they could achieve significant economies of scale if
they were able to host more than one site on a single server. This trick would allow
acme.com, ajax.com, toadranch.com, and many other sites to be transparently
served by the same hardware. In response to this business need, virtual interfaces
were born.

The idea is simple: a single machine responds on the network to more IP ad-
dresses than it has physical network interfaces. Each of the resulting “virtual” network interfaces can be associated with a corresponding domain name that users
on the Internet might want to connect to. Thus, a single machine can serve literally hundreds of web sites.

Virtual interfaces allow a daemon to identify connections based not only on the
destination port number (e.g., port 80 for HTTP) but also on the connection’s
destination IP address. Today, virtual interfaces are in widespread use and have
proved to be useful for applications other than web hosting.

Using name-based virtual hosts
The HTTP 1.1 protocol also defines a form of virtual-interface-like functionality
(officially called “name-based virtual hosts”) that eliminates the need to assign
unique IP addresses to web servers or to configure a special interface at the OS
level. This approach conserves IP addresses and is useful for some sites, especially
those (such as universities) at which a single server is home to hundreds or thou-
sands of home pages.

Configuring virtual interfaces
Setting up a virtual interface involves two steps. First, you must create the virtual
interface at the TCP/IP level.

Linux virtual interfaces are named with the notation interface:instance. For example, if your Ethernet interface is eth0, then the virtual interfaces associated with it
could be eth0:0, eth0:1, and so on. All interfaces are configured with the ifconfig
command. For example, the command
```
$ sudo ifconfig eth0:0 128.138.243.150 netmask 255.255.255.192 up
```
configures eth0:0 and assigns it an address on the 128.138.243.128/26 network.

To configure a virtual interface, just run ifconfig on one of the virtual names.
(The underlying physical interface must already have been “plumbed.”) In most
cases, you’ll want to set up the system so that the ifconfigs for virtual interfaces
happen automatically at boot time.
 
Telling Apache about Virutal Interfaces
In addition to creating the virtual interfaces, you need to tell Apache what documents to serve when a client tries to connect to each interface (IP address). You do
this with a VirtualHost clause in the httpd.conf file.


With name-based virtual hosts, multiple DNS names all point to the same IP address. The Apache configuration is similar, but you specify the primary IP address
on which Apache should listen for incoming named virtual host requests and you
omit the IP address in the VirtualHost clause:

NameVirtualHost 128.138.243.150
``` 
<VirtualHost *>
  ServerName www.company.com
  ServerAdmin webmaster@www.company.com
  DocumentRoot /var/www/htdocs/company
  ErrorLog logs/www.company.com-error_log
  CustomLog logs/www.company.com-access_log combined
  ScriptAlias /cgi-bin/ /var/www/cgi-bin/company
</VirtualHost>
```

In this configuration, Apache looks in the HTTP headers to determine the requested site. The server listens for requests for www.company.com on its main IP
address, 128.138.243.150.
