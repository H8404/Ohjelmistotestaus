*** Settings ***
Resource         resource.robot

*** Test Cases **
Avaa selain login sivulle
        Open Browser To Login Page
Testaa Kirjautuminen
        Input Username	Iotibot
        Input Password	challenge2016	
        Click Login
Sulje selain
        Close Browser






