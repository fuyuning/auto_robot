*** Settings ***
Documentation  admin_car_statistic
Resource  ../resources.robot
Library  robot_car_wash_server_library.car_statistic.CarStatisticLibrary
Suite Setup  Login  ${username}   ${password}
Suite Teardown  Logout
Force Tags  model:admin_car_statistic  虾洗后台


