*** Settings ***
Documentation  admin_membership_statistic
Resource  ../resources.robot
Library  robot_car_wash_server_library.membership_statistic.MembershipStatisticLibrary
Suite Setup  Login  ${username}   ${password}
Suite Teardown  Logout
Force Tags  model:admin_membership_statistic  虾洗后台


