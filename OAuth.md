# Authendication and Authorization

General Background: 
* Federated Identities, Idenetity Management, and SSO using SAML is for (client) Authendication, while OAuth is for (client) Authorization.
* In essence, a principle must be authendicated (using their credentials) to send a request, and a principle must be authorized in-order to complete that request.
* ***Principle***: user or application.
* However, OAuth can do both authendication and authorization.

OAuth Backgtound:
* OAuth was originally created for third-apps access APIs in a way that did require the user to give their password to the third-party application.
* For example, before Yelp require you enter facebook username and password to allow Yelp to see which facebook friends were also using yelp.
* Thereafter, first-party applications realized there is alot of benefit to this pattern- redirecting user away from the app to an OAuth sever, where they enter their password. Thus, users are never enetering the password into the app directly. 
  * So when a user needs to use an API that requires them to make a authendicated request, that API communicates with the OAuth server to authedicate user. 
  * Then the API again communicates with the same OAuth server to verify if the (now authendicated) user has the authorization to make to complete the request made in the orignial API call.      
* This way of centralizing of user-credntials provides a fast (development-time), easy (credentials managment) and secure (reduces application attack vectors) way of authendicating a user and then checking if the authedicated user has the authorization to complete an authendication request.   

### Getting hands dirty (:hammer: :hammer:)

Building an OAuth Service using Python- Flask, Postgres, and JWT.

In this lab, we use the OAuth service (open-source) as way to authendicate a principle, and verify authorization of that principle- making a call to an API, or to another microservice with in the system. 

###### Installing docker to deploy in a VM  (ISSUE)

The official docker website documentation is okay- idc about adding their official repo. Installation guide: (can use apt or snap)
https://linuxconfig.org/how-to-install-docker-on-ubuntu-18-04-bionic-beaver

###### BUT I was wrong!
"The first mistake is to think that a Docker image/container is similar to a virtual machine. There are resemblances but they aren't the same and frankly, not really similar."

Docker is not, really, for running an OS. It is for running a single process in a contained (isolated) environment. The container uses the same kernel as what is on the host.

When you create a Docker image with FROM ubuntu you are starting your image with some pre-created layers that brings in some parts of a standard file system and packages you would find on a Ubuntu server.

Then you add your own additional layers, adding binaries and files that are necessary to run your program / process.
Source:  https://serverfault.com/questions/986848/is-it-possible-to-run-ubuntu-server-on-docker

###### Using Virtual Box instead
* Install VirtualBox.2.Create a virtual machine that would host Linux Ubuntu.
* You may refer toOSBOXES website and download the Ubuntu64-bit VDI imageat https://www.osboxes.org/ubuntu/; 
* for this lab Ubuntu 19.10 Eoan Ermine version is recommended: https://sourceforge.net/projects/osboxes/files/v/vb/55-U-u/19.04/19.0464.7z/download3.
* Unzip the file and fulfill the installation processoLogin Password: osboxes.orgoEscalateto root using: sudo su


######  Postgres DB Setup
https://www.digitalocean.com/community/tutorials/how-to-install-and-use-postgresql-on-ubuntu-18-04

Commands

* Check service status on your system using ==> service --status-all
* The installation procedure created a user account called postgres that is associated with the default Postgres role. In order to use Postgres, you can log into that account from cli. ==> sudo -i -u postgres 
* ***or***
* running the single command psql as the postgres user with sudo ==> sudo -u postgres psql
* create a new user, without switching from your normal account ==> sudo -u postgres createuser --interactive (need a role for non-root linux user to access db from cli using psql -d dbname) 
* create db ==> sudo -u postgres createdb whoami 
* If you want your user to connect to a different database, you can do so by specifying the database like this ==> psql -d exsisting-db-name
* sql commands: \l, \q, \du.
* Using sudo -u postgres: droprole, dropdb. 

Some things to keep in mind with Postgres:

* By default, Postgres uses a concept called “roles” to handle in authentication and authorization. These are, in some ways, similar to regular Unix-style accounts, but Postgres does not distinguish between users and groups and instead prefers the more flexible term “role”.
* Postgres is set up to use ident authentication, meaning that it associates Postgres roles with a matching Unix/Linux system account. If a role exists within Postgres, a Unix/Linux username with the same name is able to sign in as that role.
* Another assumption that the Postgres authentication system makes by default is that for any role used to log in, that role will have a database with the same name which it can access. ==> createdb whoami!
* To log in with ident based authentication, you’ll need a Linux user with the same name as your Postgres role and database.
* If you don’t have a matching Linux user available, you can create one with the adduser command. 
* If you want your user to connect to a different database, you can do so by specifying the database like this ==> psql -d postgres.
* Connect to your db using ==> sudo psql -d whoami (TBD)
* You can see your new table by typing==> sammy=# \d
* If you want to see just the table without the sequence, you can type==> sammy=# \dt 
* Retrieve the information you’ve added by typing==> sammy=#SELECT * FROM playground;



# Reference
* https://www.grizzlypeaksoftware.com/articles?id=5SCpQMgookgKNtupzNHg9K
* https://oauth.net/
* https://help.bizagi.com/bpm-suite/en/index.html?cloud_auth_oauth.htm
