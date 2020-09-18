*** Settings ***
Library   String
Library   OperatingSystem

*** Variables ***
##This variable use : https://imagemagick.org/script/command-line-processing.php
${IMAGE_COMPARATOR_COMMAND}   convert __REFERENCE__ __TEST__ -metric RMSE -compare -format  "%[distortion]" info:

*** Keywords ***
Compare Images
   [Arguments]      ${Reference_Image_Path}    ${Test_Image_Path}    ${Allowed_Threshold}
   ${TEMP}=         Replace String     ${IMAGE_COMPARATOR_COMMAND}    __REFERENCE__     ${Reference_Image_Path}
   ${COMMAND}=      Replace String     ${TEMP}    __TEST__     ${Test_Image_Path}
   Log              Executing: ${COMMAND}
   ${RC}            ${OUTPUT}=     Run And Return Rc And Output     ${COMMAND}
   Log              Return Code: ${RC}
   Log              Return Output: ${OUTPUT}
   ${RESULT}        Evaluate    ${OUTPUT} <= ${Allowed_Threshold}
   Should be True   ${RESULT}
