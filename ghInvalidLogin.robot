
*** Settings ***
Resource         resource.robot

*** Test Cases **
Avaa selain login sivulle
        Open Browser To Login Page
Yritä Kirjautua sisään väärillä tunnuksilla
        Input Username          Wrong
        Input Password          Credential
        Click Login
Odota hetki
	Wait Until Page Contains Element	commit	5
Ei päästy sisää
	Page Should Contain Element	 commit
Sulje selain
	Close Browser
