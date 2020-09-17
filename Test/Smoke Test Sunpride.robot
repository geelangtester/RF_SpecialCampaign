*** Settings ***
Documentation     Test suit ini dibuat untuk smoke test sunpride
Suite Setup       Begin Web Test    # Keyword open browser
Suite Teardown    End Web Test    # Keyword close all browser
Library           SeleniumLibrary
Resource          ../Resource/Variable/VariableLandingPage.robot
Resource          ../Resource/landing_page/LandingPage.robot
Resource          ../Resource/landing_page/HomePage.robot
Resource          ../Resource/landing_page/TukarPoinPage.robot

*** Test Cases ***
Login
    User Login
    Onboarding
    Upload Receipt
    Tukar Poin
