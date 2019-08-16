*** Settings ***
Library  AppiumLibrary
Resource  ../Resources/PO/Common.robot
Resource  ../Resources/PO/SplashScreen.robot
Resource  ../Resources/PO/OnboardingScreens.robot
Resource  ../Resources/PO/DashboardScreen.robot

Suite Setup  Launch Always On App
Suite Teardown  Close App


*** Test Cases ***
The user should be able to see Splash screen
    [Tags]  Smoke
    Splash screen displaying


The user should be able to see Onboarding 1 screen
    [Tags]  Smoke
    Splash screen displaying
    ##Onboarding 1 screen is displayed
    Terms and PP links are clickable

The user should be able to see Onboarding 2 screen
    Splash screen displaying
    Onboarding 2 screen is displayed

The user should be able to see Dashboard screen
    Splash screen displaying
    Onboarding 1 screen is displayed
    Tapping on Get Started button

The user should be able to see Connection request popup
    Splash screen displaying
    Onboarding 1 screen is displayed
    Tapping on Get Started button
    Connection request popup is displayed



