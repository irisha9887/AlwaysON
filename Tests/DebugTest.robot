*** Settings ***
Library  AppiumLibrary
Resource  ../Resources/PO/Common.robot
Resource  ../Resources/PO/SplashScreen.robot
Resource  ../Resources/PO/OnboardingScreens.robot
Resource  ../Resources/PO/DashboardScreen.robot

Suite Setup  Launch Always On App
Suite Teardown  Close App


*** Test Cases ***
