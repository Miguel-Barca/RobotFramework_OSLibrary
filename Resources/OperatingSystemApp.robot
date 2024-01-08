*** Settings ***
Library    OperatingSystem

*** Variables ***
${base_directory}    Outputs
${directory_1}       First Directory
${directory_2}       Second Directory
${file_1}            first.txt
${file_2}            second.txt
${file_3}            third.txt


*** Keywords ***
Create Base Directory
    create directory          ${base_directory}
    should exist              ${base_directory}

Create Directory 1
    ${directory_path}   JOIN PATH    ${base_directory}    ${directory_1}
    create directory    ${directory_path}
    should exist        ${directory_path}


Create Directory 2
    ${directory_path}   JOIN PATH    ${base_directory}    ${directory_2}
    create directory    ${directory_path}
    should exist        ${directory_path}

Create First File
    ${file_path}   JOIN PATH    ${base_directory}    ${directory_1}    ${file_1}
    Create file    ${file_path}    This is file 1
    should exist   ${file_path}

Create Second File
    ${file_path}   JOIN PATH    ${base_directory}    ${directory_2}    ${file_2}
    Create file    ${file_path}    This is file 2
    should exist   ${file_path}

Create Third File
    ${file_path}   JOIN PATH    ${base_directory}    ${directory_2}    ${file_3}
    Create file    ${file_path}    This is file 3
    should exist   ${file_path}

Move Third File
    ${source_path}   JOIN PATH    ${base_directory}    ${directory_2}    ${file_3}
    ${target_path}   JOIN PATH    ${base_directory}    ${directory_1}    ${file_3}

    move file        ${source_path}    ${target_path}

    #Confirm success on operation
    should exist      ${target_path}
    should not exist  ${source_path}