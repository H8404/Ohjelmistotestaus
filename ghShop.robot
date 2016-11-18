*** Settings ***
Resource	 resource.robot

*** Test Cases ***
Githubin etusivu aukeaa
	Open Browser To Home Page
Klikkaa kaupan linkkiä
	Click Link	xpath=//a[@href=\'https://shop.github.com'\]
Odota hetki
	Wait Until Page Contains	Activity	5
Klikkaa tuotetta activity book
	Click Link	xpath=//a[@href=\'/products/github-activity-book'\]
Sulje selain
	Close Browser
