*** Settings ***
Library    SeleniumLibrary
   

Default tags     RegressionTest

Resource    Bapacho Variables.robot
Resource     Customerkeywords.robot 

Test Setup    Set Screenshot Directory    C:/Users/Nisha/git/ta-bapacho/Bapacho/BapachoScreenshots/Customer Site Screenshots

*** Test Cases ***

#CMS001TC001