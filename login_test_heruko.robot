*** Settings ***
Documentation    Viết test case trang login
Library    SeleniumLibrary


*** Variables ***
${URL}    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${USERNAME}    VANDAI
${PASSWORD}    1234
${USERNAME1}    abc
${PASSWORD1}    abc!
*** Test Cases ***
Valip login
    #1.Mở trình duyệt
    Mở trình duyệt
    #2.Đăng nhập
    Đăng Nhập    ${USERNAME}${PASSWORD}
    #3.Kiểm tra đăng nhập thành công
    Kiểm tra đăng nhập thành công
    #4.Đóng trình duyệt
Invalip login
    #1.Mở trình duyệt
    Mở trình duyệt
    #2.Đăng nhập
    Đăng Nhập    ${USERNAME}${PASSWORD}
    #3.Kiểm tra đăng nhập thành công
    #Kiểm tra đăng nhập thất bại
    #4.Đóng trình duyệt
*** Keywords ***
Mở trình duyệt
    Open Browser    ${URL}    chorme
    Maximize Browser Window
Đăng Nhập
    [Arguments]    ${USERNAME}
    Input Text    id=username    ${USERNAME}
    Input Text    id=password    ${PASSWORD}
    Click Button    xpatyh=//*[@id="login"]/button
Kiểm tra đăng nhập thành công
    Page Should Contain    welcome
# Đóng trình duyệt
#     Close All Browsers
Kiểm tra đăng nhập thất bại
    Page Should Contain    your username is invalid đây