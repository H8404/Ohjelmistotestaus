*** Settings ***
Resource         resource.robot

*** Test Cases **
Avaa selain login sivulle
	Open Browser To Login Page
Kirjaudu sisään
        Input Username          Iotibot
        Input Password          challenge2016
        Click Login
Odota hetki
	Wait Until Page Contains        q       5
Anna syöte hakukenttään
	Input Search		JAMK-IT	
Päädytään haku sivulle
	Page Should Contain Element	q
Sulje selain
        Close Browser






