*** Settings ***
Documentation  admin_wash_user_trend_statistic
Resource  ../resources.robot
Library  robot_car_wash_server_library.wash_user_trend_statistic.WashUserTrendStatisticLibrary
Suite Setup  Login  ${username}   ${password}
Suite Teardown  Logout
Force Tags  model:admin_wash_user_trend_statistic  虾洗后台


