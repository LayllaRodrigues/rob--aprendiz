*** Settings  ***
Library     SeleniumLibrary

*** Test Cases  ***
Should See Page Title 
    Open Browser        https://training-wheels-protocol.herokuapp.com/     chrome
    Title Should be     Training Wheels Protocol
    Close Browser