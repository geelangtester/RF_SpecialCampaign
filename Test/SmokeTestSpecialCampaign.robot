*** Settings ***
Resource          ../Common/common.robot
Resource          ../Resource/Page/GeneralKeyword.robot
Resource          ../Resource/Page/CampaignPoinAutoClaim.robot
Resource          ../Resource/Page/CampaignImcoco.robot
Resource          ../Resource/Page/CampaignPoinHidden.robot
Test Setup        Begin Web Test
Test Teardown     End Web Test

*** Test Cases ***
Smoke Test Inaco
    [Tags]  Inaco
    Open URL inaco
    Login special campaign
    Check value reward before
    Upload Struk
    Submit struk
    Check receipt upload sucsess
    Update user profile
    # Check edit value
    Check notification
    Check detail struk inaco
    Claim reward
    Check value inaco reward after
    Compare value reward

Smoke Test AutoClaim
    [Tags]  AutoClaim
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

Smoke Test Hidden
    [Tags]  Hidden
    Open URL wooah
    Login special campaign
    Upload struk
    Submit struk
    Check receipt upload sucsess
    Update user profile
    Check notification
    Check detail struk wooah
    Check value reward before
    Claim reward
    Check value reward after
    Compare value reward
