*** Settings ***
Documentation  admin_wash_group
Resource  ../resources.robot
Library  robot_car_wash_server_library.wash_group.WashGroupLibrary
Force Tags  model:admin_wash_group  虾洗后台


*** Test Cases ***
post admin wash groups Fail Without Login
   [Documentation]  接口名:新增拼团${\n}
   ...              请求方式:Post${\n}
   ...              预期结果:未登录,http响应码返回 403,无Json数据返回。
   [Tags]           Respcode:403
   post admin wash groups fail 403   name=${name}  valid_start_time=${Please_input}  valid_end_time=${Please_input}  is_diff_car_type=False  service_groups=${service_groups}  people_num=${people_num}  wash_area_id=${wash_area_id}  expect_time=${Please_input}  car_washer_ids=${car_washer_ids}    auto_group=False  

post admin wash groups join by wash group id Fail Without Login
   [Documentation]  接口名:一键虾滑${\n}
   ...              请求方式:Post${\n}
   ...              预期结果:未登录,http响应码返回 403,无Json数据返回。
   [Tags]           Respcode:403
   post admin wash groups join by wash group id fail 403     wash_group_id=${wash_group_id}  robot_num=${robot_num}    

get admin wash groups by wash group id Fail Without Login
   [Documentation]  接口名:获取拼团详情${\n}
   ...              请求方式:Get${\n}
   ...              预期结果:未登录,http响应码返回 403,无Json数据返回。
   [Tags]           Respcode:403
   get admin wash groups by wash group id fail 403     wash_group_id=${wash_group_id}

get admin wash groups Fail Without Login
   [Documentation]  接口名:获取拼团列表${\n}
   ...              请求方式:Get${\n}
   ...              预期结果:未登录,http响应码返回 403,无Json数据返回。
   [Tags]           Respcode:403
   get admin wash groups fail 403     wash_group_no=${wash_group_no}  status=${status}  wash_area_id=${wash_area_id}  valid_start_section=${valid_start_section}  page_num=${page_num}  page_size=${page_size}  

put admin wash groups by wash group id Fail Without Login
   [Documentation]  接口名:编辑拼团${\n}
   ...              请求方式:Put${\n}
   ...              预期结果:未登录,http响应码返回 403,无Json数据返回。
   [Tags]           Respcode:403
   put admin wash groups by wash group id fail 403     wash_group_id=${wash_group_id}  valid_start_time=${Please_input}  valid_end_time=${Please_input}  is_diff_car_type=False  service_groups=${service_groups}  wash_area_id=${wash_area_id}  expect_time=${Please_input}  car_washer_ids=${car_washer_ids}    name=${name}  people_num=${people_num}  auto_group=False  


*** Variables ***
${wash_group_id}  1a2b3c4d5e6f7zz


*** Keywords ***
post admin wash groups Fail 403
   [Arguments]  &{kwargs}
   ${resp}=  post admin wash groups  &{kwargs}
   expect status is 403  ${resp}  

post admin wash groups join by wash group id Fail 403
   [Arguments]  &{kwargs}
   ${resp}=  post admin wash groups join by wash group id  &{kwargs}
   expect status is 403  ${resp}  

get admin wash groups by wash group id Fail 403
   [Arguments]  &{kwargs}
   ${resp}=  get admin wash groups by wash group id  &{kwargs}
   expect status is 403  ${resp}  

get admin wash groups Fail 403
   [Arguments]  &{kwargs}
   ${resp}=  get admin wash groups  &{kwargs}
   expect status is 403  ${resp}  

put admin wash groups by wash group id Fail 403
   [Arguments]  &{kwargs}
   ${resp}=  put admin wash groups by wash group id  &{kwargs}
   expect status is 403  ${resp}  

