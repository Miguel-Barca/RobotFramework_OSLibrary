*** Settings ***
Documentation    File & Directory Tests
Resource        ../Resources/OperatingSystemApp.robot

#robot -d Results Tests/OperatingSystemScript.robot
*** Variables ***


*** Test Cases ***
Create Some Directories
    [Documentation]    OS - Directories Creation
    [Tags]    OS Directories
    OperatingSystemApp.Create Base Directory
    OperatingSystemApp.Create Directory 1
    OperatingSystemApp.Create Directory 2

Create Test Files
    [Documentation]    OS - Create files
    [Tags]    OS Files
    OperatingSystemApp.Create First File
    OperatingSystemApp.Create Second File
    OperatingSystemApp.Create Third File

Moving File
    [Documentation]    OS - Move File
    [Tags]    File 3
    operatingsystemapp.move third file