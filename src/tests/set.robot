*** Settings ***
Resource  resource.robot
Suite Setup  Open And Configure Browser
Suite Teardown  Close Browser

*** Test Cases ***
When user submits "set value" form, the count is set at that value
	Go To  ${HOME_URL}
	Title Should Be  Laskuri
	Page Should Not Contain  nappia painettu 10 kertaa
	Input Text  value  10
   Click Button  aseta
	Page Should Contain  nappia painettu 10 kertaa
