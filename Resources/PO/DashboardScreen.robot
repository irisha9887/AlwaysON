*** Settings ***
Documentation  Dashboard describes all elements on Dashboard screen
Library  AppiumLibrary


*** Keywords ***
Tapping on Get Started button
    wait until page contains element  id=com.anchorfree.alwayson:id/walkthrough_get_started_btn
    click element  id=com.anchorfree.alwayson:id/walkthrough_get_started_btn

Connection request popup is displayed
    wait until page contains element  id=android:id/alertTitle