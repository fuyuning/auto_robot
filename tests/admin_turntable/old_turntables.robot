*** Settings ***
Documentation  admin_turntable
Resource  ../resources.robot
Library  robot_car_wash_server_library.turntable.TurntableLibrary
Suite Setup  Login  ${username}   ${password}
Suite Teardown  Logout
Force Tags  model:admin_turntable  虾洗后台


