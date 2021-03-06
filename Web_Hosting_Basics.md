Hosting a websever is a form of providing a network service.

A daemon listens for connections on TCP port 80 (the HTTP standard),
accepts requests for documents, and transmits them to the requesting user’s
browser. Many of these documents are generated on the fly in conjunction with
databases and application frameworks, but that’s incidental to the underlying
HTTP protocol.

Information on the Internet is organized into an architecture defined by the Inter-
net Society (ISOC).

SOC defines three primary ways to identify a resource: Uniform Resource Iden-
tifiers (URIs), Uniform Resource Locators (URLs), and Uniform Resource Names
(URNs). URLs and URNs are really specialized types of URIs

URLs tell you how to locate a resource by describing its primary access
mechanism (e.g., http://admin.com)

URNs identify (“name”) a resource without implying its location or tell-
ing you how to access it (e.g., urn:isbn:0-13-020601-6).

With URLs, which describe how to access an
object through five basic components:
-Protocol or application
-Hostname
-TCP/IP port (optional)
-Directory (optional)
-Filename (optional)

```
file      Accesses a local file              file:///etc/syslog.conf
ftp       Accesses a remote file via FTP     ftp://ftp.admin.com/adduser.tar.gz
http      Accesses a remote file via HTTP    http://admin.com/index.html
https     Accesses a remote file via HTTP/SSL  https://admin.com/order.shtml
ldap      Accesses LDAP directory services    ldap://ldap.bigfoot.com:389/cn=Herb
mailto    Sends email to a designated address  mailto:linux@book.admin.com
```

How HTTP works?
HTTP is a stateless client/server protocol. A client asks the server for the “con-
tents” of a specific URL. The server responds either with a spurt of data or with
some type of error message. The client can then go on to request another object.


Content Generation on the Fly...
In addition to serving up static documents, an HTTP server can provide the user
with content that has been created on the fly. For example, if you wanted to pro-
vide the current time and temperature to users visiting your web site, you might
have the HTTP server execute a script to obtain this information. This amaze-the-
natives trick is often accomplished with the Common Gateway Interface, or CGI.

CGI is not a programming language but rather a specification by which an HTTP
server exchanges information with other programs. CGI scripts are most often
written in Perl, Python, or PHP. But really, any programming language that can
perform real-time I/O is acceptable

Application servers
Complex enterprise applications may need more functionality than a basic HTTP
server can provide. For example, modern-day Web 2.0 pages often contain a sub-
component that is tied to a dynamic data feed (e.g., a stock ticker). Although it’s
possible to implement this functionality with Apache through technologies such
as AJAX and JavaScript Object Notation (JSON), some developers prefer a more
fully featured language such as Java. The common way to interface Java applica-
tions to an enterprise’s other data sources is with a “servlet.”

Servlets are Java programs that run on the server on top of an application server
platform. Application servers can work independently or in concert with Apache.
Most application servers were designed by programmers for programmers and
lack the concise debugging mechanisms expected by system administrators. Table
23.3 highlights some common UNIX/Linux application servers.

Some common application severs:
Tomcat
GlassFish
JBoss
OC4J
WebSphere
WebLogic
Jetty

