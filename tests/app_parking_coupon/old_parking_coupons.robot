*** Settings ***
Documentation  app_parking_coupon
Resource  ../resources.robot
Library  robot_washing_expert_library.parking_coupon.ParkingCouponLibrary
Suite Setup  Login  ${username}   ${password}
Force Tags  model:app_parking_coupon  虾客APP


