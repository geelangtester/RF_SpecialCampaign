*** Settings ***
Resource          ../Common/common.robot
Resource          ../Resource/Page/ImcocoPage.robot

*** Test Cases ***
Smoke Test Inaco
    [Setup]    Begin Web Test
    Login Imcoco
    Check value reward before
    Upload Struk
    Submit struk
    Check receipt upload sucsess
    Update user profile
    Check notification
    Claim reward
    Check value reward after
    Compare value reward
    [Teardown]    End Web Test
