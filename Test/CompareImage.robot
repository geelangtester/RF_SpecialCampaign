*** Settings ***
Resource  ../Resource/Variable/CompareImage.robot
Test Template   CompareImagesTemplate

*** Test Case ***
Compare
    [Template]  CompareImagesTemplate
    Compare Images    Results/BerahsilSubmitStruk.png    Results\\BerhasilLogin.png  0
