*** Settings ***
Resource          ../Common/common.robot
Resource          ../Resource/Page/GeneralKeyword.robot
Resource          ../Resource/Page/CampaignWeekly.robot
Resource          ../Resource/Page/CampaignImcoco.robot
Test Setup        Begin Web Test
Test Teardown     End Web Test

*** Test Cases ***
Smoke Test Inaco
    [Tags]  Inaco
    Open URL inaco
    Login special campaign
    # Check value inaco reward before
    # Upload Struk
    # Submit struk
    # Check receipt upload sucsess
    Update user profile
    Check edit value
    # Check notification
    # Check detail struk inaco
    # Claim reward
    # Check value inaco reward after
    # Compare value reward

Smoke Test Weekly
    [Tags]  Weekly
    Open URL Weekly
    Login special campaign
    Upload struk
    Submit struk
    Check receipt upload sucsess
    Update user profile
    Check notification
    Check detail struk weekly
    Check value weekly reward before
    Claim reward
    Check value weekly reward after
    Compare value reward
