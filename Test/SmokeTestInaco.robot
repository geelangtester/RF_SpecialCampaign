*** Settings ***
Resource          ../Common/common.robot
Resource          ../Resource/Page/GeneralKeyword.robot
Resource          ../Resource/Page/CampaignWeekly.robot
Test Setup        Begin Web Test
Test Teardown     End Web Test

*** Test Cases ***
# Smoke Test Inaco
#     []
#     [Setup]    Begin Web Test
#     Open URL inaco
#     Login special campaign
#     # Check value reward before
#     # Upload Struk
#     # Submit struk
#     # Check receipt upload sucsess
#     Update user profile
#     Check edit value
#     # Check notification
#     # Claim reward
#     # Check value reward after
#     # Compare value reward
#     [Teardown]    End Web Test

Smoke Test Weekly
    [Tags]  Weekly
    Open URL Weekly
    Login special campaign
