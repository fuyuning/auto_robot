*** Settings ***
Documentation  admin_wash_user_statistic
Resource  ../resources.robot
Library  robot_car_wash_server_library.wash_user_statistic.WashUserStatisticLibrary
Force Tags  model:admin_wash_user_statistic  虾洗后台


*** Test Cases ***
get admin wash user statistics Fail Without Login
   [Documentation]  接口名:统计列表${\n}
   ...              请求方式:Get${\n}
   ...              预期结果:未登录,http响应码返回 403,无Json数据返回。
   [Tags]           Respcode:403
   get admin wash user statistics fail 403     user_id=${user_id}  order_by=${order_by}  page_num=${page_num}  page_size=${page_size}  

patch admin wash user statistics visible by wash user statistic id Fail Without Login
   [Documentation]  接口名:统计数据隐藏${\n}
   ...              请求方式:Patch${\n}
   ...              预期结果:未登录,http响应码返回 403,无Json数据返回。
   [Tags]           Respcode:403
   patch admin wash user statistics visible by wash user statistic id fail 403     wash_user_statistic_id=${wash_user_statistic_id}  visible=False    


*** Variables ***
${wash_user_statistic_id}  1a2b3c4d5e6f7zz


*** Keywords ***
get admin wash user statistics Fail 403
   [Arguments]  &{kwargs}
   ${resp}=  get admin wash user statistics  &{kwargs}
   expect status is 403  ${resp}  

patch admin wash user statistics visible by wash user statistic id Fail 403
   [Arguments]  &{kwargs}
   ${resp}=  patch admin wash user statistics visible by wash user statistic id  &{kwargs}
   expect status is 403  ${resp}  

