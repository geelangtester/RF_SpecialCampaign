*** Settings ***
Resource          ../Common/common.robot
Resource          ../Resource/Page/Page.robot

*** Test Cases ***
Smoke Test Inaco
    [Setup]    Begin Web Test
    Login Imcoco
    Upload Struk
    Submit struk
    Check receipt upload succes
    [Teardown]    End Web Test
