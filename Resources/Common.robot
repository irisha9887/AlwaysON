*** Settings ***
Library  AppiumLibrary

*** Variables ***
#Appium Configuration
${APPIUM_SERVER} =  http://localhost:4723/wd/hub
#Huawei Honor device
#${PLATFORM_VERSION} =  8.1.0
#SGS9 device
${PLATFORM_VERSION} =  8.0.0
${PLATFORM_NAME} =  Android
#Huawei Honor device
#${DEVICE_NAME} =   UEEDU18908000395
#SGS9 device
${DEVICE_NAME} =  344c323936583398
${PACKAGE_NAME} =  com.anchorfree.alwayson
${ACTIVITY_NAME} =  com.fireshield.MainActivity
#${APP_PATH} =  ../Resources/APK/AlwaysONapp.apk
#${APP_PATH} =  ${CURDIR}/APK/AlwaysONapp.apk
${APP_PATH} =  ${EXECDIR}/Resources/APK/AlwaysONapp.apk


*** Keywords ***
#I don't need this
#Install Always On App
    #install app  appPath=${APP_PATH}  appPackage=${PACKAGE_NAME}

Launch Always On App
    open application   ${APPIUM_SERVER}  platformName=${PLATFORM_NAME}
    ...                platformVersion=${PLATFORM_VERSION}  deviceName=${DEVICE_NAME}
    ...                appPackage=${PACKAGE_NAME}  appActivity=${ACTIVITY_NAME}
    ...                app=${APP_PATH}

Close App
    close application






