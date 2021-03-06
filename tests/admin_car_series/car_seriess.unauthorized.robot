*** Settings ***
Documentation  admin_car_series
Resource  ../resources.robot
Library  robot_car_wash_server_library.car_series.CarSeriesLibrary
Force Tags  model:admin_car_series  虾洗后台


*** Test Cases ***
get admin car series Fail Without Login
   [Documentation]  接口名:车系列表${\n}
   ...              请求方式:Get${\n}
   ...              预期结果:未登录,http响应码返回 403,无Json数据返回。
   [Tags]           Respcode:403
   get admin car series fail 403     car_brand=${car_brand}  car_series_name=${car_series_name}  car_scale=${car_scale}  car_model=${car_model}  is_active=False  is_car_model=False  page_num=${page_num}  page_size=${page_size}  

put admin car series by car series id Fail Without Login
   [Documentation]  接口名:编辑车系${\n}
   ...              请求方式:Put${\n}
   ...              预期结果:未登录,http响应码返回 403,无Json数据返回。
   [Tags]           Respcode:403
   put admin car series by car series id fail 403     car_series_id=${car_series_id}  car_model_id=${car_model_id}    

patch admin car series by car series id Fail Without Login
   [Documentation]  接口名:启用/禁用服务支持${\n}
   ...              请求方式:Patch${\n}
   ...              预期结果:未登录,http响应码返回 403,无Json数据返回。
   [Tags]           Respcode:403
   patch admin car series by car series id fail 403     car_series_id=${car_series_id}  is_active=False    


*** Variables ***
${car_series_id}  1a2b3c4d5e6f7zz


*** Keywords ***
get admin car series Fail 403
   [Arguments]  &{kwargs}
   ${resp}=  get admin car series  &{kwargs}
   expect status is 403  ${resp}  

put admin car series by car series id Fail 403
   [Arguments]  &{kwargs}
   ${resp}=  put admin car series by car series id  &{kwargs}
   expect status is 403  ${resp}  

patch admin car series by car series id Fail 403
   [Arguments]  &{kwargs}
   ${resp}=  patch admin car series by car series id  &{kwargs}
   expect status is 403  ${resp}  

