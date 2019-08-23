
from appium import webdriver
from appium.webdriver.common.mobileby import MobileBy
from selenium.webdriver.support.ui import WebDriverWait

*** Settings ***
Resource  ../Resources/Common.robot
Resource  ../Resources/PO/SplashScreen.robot
Resource  ../Resources/PO/OnboardingScreens.robot
Resource  ../Resources/PO/DashboardScreen.robot
Suite Setup  Common.Launch Always On App
Suite Teardown  Close App


*** Test Cases ***
The user should be able to open the app
    [Tags]  Smoke
    SplashScreen.Splash screen displaying





