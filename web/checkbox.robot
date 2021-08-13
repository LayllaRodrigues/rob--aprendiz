*** Settings ***
Library         SeleniumLibrary
Test Setup      Nova sessão
Test Teardown   Encerra sessão

*** Variables  ***
${url}      https://training-wheels-protocol.herokuapp.com/

*** Test Cases ***
Marcando opção com Id
    Go To                               ${url}/checkboxes
    Select Checkbox                     id:thor
    checkbox Should Be Selected         id:thor

Marcando opção com CSS Selector
    [tags]      ironman
    Go to                           ${url}/checkboxes
    Select Checkbox                 css:input[value='iron-man']
    Checkbox Should Be Selected     css:input[value='iron-man']

*** Keywords ***
Nova sessão
    Open Browser                       ${url}           chrome

Encerra sessão
    Close Browser

