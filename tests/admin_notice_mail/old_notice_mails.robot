*** Settings ***
Documentation  admin_notice_mail
Resource  ../resources.robot
Library  robot_car_wash_server_library.notice_mail.NoticeMailLibrary
Suite Setup  Login  ${username}   ${password}
Suite Teardown  Logout
Force Tags  model:admin_notice_mail  虾洗后台


