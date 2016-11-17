*** Settings ***
Documentation	Tämä testi testaa Githubbia päällisin puolin
Library         Selenium2Library


*** Variables ***
${BROWSER}      Firefox
${DELAY}        0
${LOGIN URL}    https://github.com/login
${USER}         Iotibot
${PASSWORD}     challenge2016

*** Keywords ***
Open Browser To Login Page
        Open Browser	${LOGIN URL}	${BROWSER}
Input Username
	[Arguments]	${username}
	Input Text	login_field	${username}
Input Password
	[Arguments]	${password}
	Input Text	password	${password}
Click Login
	Click Element	commit
Input Search
	[Arguments]	${srcparam}
	Input Text	q	${srcparam}
Click Some Result
	[Arguments]	${result}
	Click Link	${result}
