*** Settings ***
Documentation  admin_order
Resource  ../resources.robot
Library  robot_car_wash_server_library.order.OrderLibrary
Suite Setup  Login  ${username}   ${password}
Suite Teardown  Logout
Force Tags  model:admin_order  虾洗后台


