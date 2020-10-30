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

### Getting hands dirty

Building an OAuth Service using Python- Flask, Postgres, and JWT.

In this lab, we use the OAuth service (open-source) as way to authendicate a principle, and verify authorization of that principle- making a call to an API, or to another microservice with in the system. 

######  Postgres DB Setup
https://www.digitalocean.com/community/tutorials/how-to-install-and-use-postgresql-on-ubuntu-18-04


# Reference
* https://www.grizzlypeaksoftware.com/articles?id=5SCpQMgookgKNtupzNHg9K
* https://oauth.net/
* https://help.bizagi.com/bpm-suite/en/index.html?cloud_auth_oauth.htm
