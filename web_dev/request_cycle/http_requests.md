# 9.1 HTTP Requests Research*
## HTTP Status Codes:
  - **100s: Info pages**
    - has response from server but has not yet been accepted/reject.
  - **200s: Successful request**
    - *204 No Content :* Successful request, but the response might choose not to display changes in content view because it may not be updated.
  - **300s: Redirection** 
    - *305 Use Proxy :* The resources must be accessed through the proxy given by the Location field. Many clients (Mozilla & I.E.) do not handle responses like this for security reasons.
  - **400s: Client Error**
    - *404 Not Fount :* The server has not found anything matching the Request-URI. _The requested resource is not found._
  - **500s: Server Error**
    - *504 Gateway Timeout :* The server did not receive response over a specified time and did not execute the request.

## GET vs. POST*
  - **HTTP POST:** 
    - requests supply addtl data for the browser to the server. 
  - **HTTP GET:** 
    - requests include all required data in the URL

## Cookies*
  - Small text files
  - Have ID tags that are stored on your computer's browser directory or data subfolders
  - Cookies are created when you visit sides that use cookies to track your movements within the site
    - it helps resume where you left off
    - remember your registered login
    - theme selection
    - preferences
    - other customization functions
  - Stores a corresponding file to the one in your browser
    - This information is given voluntarily without realizing


#### **_Information gathered from [RestApiTutorial](http://www.restapitutorial.com/httpstatuscodes.html)*, [www.diffen.com](http://www.diffen.com/difference/GET-vs-POST-HTTP-Requests)*, and [allaboutcookies.com](http://www.allaboutcookies.org/cookies/)*._**
