# Read more from
http://restcookbook.com/Miscellaneous/rest-and-http/

Rest vs RPC

rest-apis-must-be-hypertext-driven.
RPC is when you retrieve  pre-loaded data, in a compacted format.

Example:
curl -v localhost:8080/employees

*   Trying ::1...
* TCP_NODELAY set
* Connected to localhost (::1) port 8080 (#0)
> GET /employees HTTP/1.1
> Host: localhost:8080
> User-Agent: curl/7.54.0
> Accept: */*
>
< HTTP/1.1 200
< Content-Type: application/json;charset=UTF-8
< Transfer-Encoding: chunked
< Date: Thu, 09 Aug 2018 17:58:00 GMT
<
* Connection #0 to host localhost left intact
[{"id":1,"name":"Bilbo Baggins","role":"burglar"},{"id":2,"name":"Frodo Baggins","role":"thief"}]

### References
* https://spring.io/guides/tutorials/rest/
