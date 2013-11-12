Demo using the same cucumber test to test a web site on Chrome, iPhone, iPad, and Android.

Software Requirements

-Chrome Driver v2.2

-Appium - http://appium.io

-Genymotion - http://www.genymotion.com
   
   -Android VM setup with Genymotion with Chrome installed

-iOS Simulator


With XCode 5.0, Apple removed the ability to launch built in applications.  If you use XCode 5.0 or above, Appium will not launch Mobile safari, which is what these tests are setup to do.

No fear, the solution is to ensure you have XCode 4.6.3 and iOS Simulator 6.1.  You can download the older version here:  https://developer.apple.com/downloads/index.action#

Appium has provided some documentation on how to switch between versions of XCode:  https://github.com/appium/appium/blob/master/docs/running-on-osx.md