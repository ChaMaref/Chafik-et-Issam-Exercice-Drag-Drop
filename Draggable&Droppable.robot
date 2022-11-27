*** Settings ***
Library    SeleniumLibrary
Library    XML
*** Variables ***
*** Test Cases ***
Test droppable
    Open Browser    https://jqueryui.com/droppable/    gc
    Maximize Browser Window
    Sleep    2
    Select Frame    xpath://iframe[@class='demo-frame']
    Drag And Drop    xpath://p[normalize-space()='Drag me to my target']    xpath://div[@id='droppable']
    Unselect Frame
    Sleep    2
    Capture Page Screenshot    droppable.png
    Capture Page Screenshot    EMBED
    Close Browser
Test draggable
    Open Browser    https://jqueryui.com/draggable/    gc
    Maximize Browser Window
    Sleep    2
    Select Frame    xpath://iframe[@class='demo-frame']
    Drag And Drop By Offset    xpath://p[normalize-space()='Drag me around']    385    -1
    Unselect Frame
    Sleep    2
    Capture Page Screenshot    draggable.png
    Capture Page Screenshot    EMBED
    Close Browser
*** Keywords ***