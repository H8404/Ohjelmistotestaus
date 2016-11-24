*** settings ***
Resource         resource.robot

*** Test Cases **
Githubin etusivu aukeaa
	Open Browser To Home Page
Klittaa tuotetta Contact Github
	Click Link	xpath=//a[@href=\'https://github.com/contact'\]
Odota hetki
	Wait Until Page Contains	q	5
Tarkastetaan löytyykö checkboxia 
	Page Should Contain Checkbox	form[shop]
Sulje selain
        Close Browser
