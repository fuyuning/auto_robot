*** Settings ***
Documentation  wxmp_wash_record
Resource  ../resources.robot
Library  robot_car_wash_wxmp_library.wash_record.WashRecordLibrary
Suite Setup  login by unionid   ${unionid}
Force Tags  model:wxmp_wash_record  车主微信端


