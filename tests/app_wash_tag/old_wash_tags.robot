*** Settings ***
Documentation  app_wash_tag
Resource  ../resources.robot
Library  robot_washing_expert_library.wash_tag.WashTagLibrary
Suite Setup  Login  ${username}   ${password}
Force Tags  model:app_wash_tag  虾客APP


