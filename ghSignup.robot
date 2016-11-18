***Settings***

Resource	resource.robot

***Test Cases***
Githubin etusivu aukeaa
	Open Browser To Home Page
Odota hetki
	Wait Until Page Contains	people	5
Anna huono sahkoposti
	Input Email	juuuuu
Klikkaa sign up nappia
	Click Button	Sign up for GitHub
Odota että virheilmoitus ilmestyy
	Wait Until Page Contains	There were problems creating your account	5
Sulje selain
	Close Browser
