*** Settings ***
Library  AppiumLibrary
Library  String

*** Keywords ***
Onboarding 1 screen is displayed
    wait until page contains element  id=com.anchorfree.alwayson:id/description
    element text should be  com.anchorfree.alwayson:id/description  With just one tap, VPN Always On ${\n} gives you a peace of mind by ${\n} monitoring and blocking various ${\n} security and privacy threats from the ${\n} Internet whenever you browse, ${\n} stream, play or shop.

Terms and PP links are clickable
    wait until page contains element  id=com.anchorfree.alwayson:id/walkthrough_terms_of_service
    click element  id=com.anchorfree.alwayson:id/walkthrough_terms_of_service

Get started button is clickable
    wait until page contains element  id=com.anchorfree.alwayson:id/walkthrough_get_started_btn
    click element  id=com.anchorfree.alwayson:id/walkthrough_get_started_btn

Onboarding 2 screen is displayed
    wait until page contains element  class=android.support.v7.app.ActionBar$Tab
    @{elements}  get webelements  class=android.support.v7.app.ActionBar$Tab
    click element  @{elements}[1]
