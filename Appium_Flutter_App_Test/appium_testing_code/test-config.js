module.exports = {
    androidCaps: {
        platformName: 'android',
        'appium:deviceName': 'emulator-5554',        
        'appium:platformVersion': '15',              
        'appium:automationName': 'Flutter',
        'appium:app': 'C:/Appium_Flutter_App_Test/test_app/build/app/outputs/apk/debug/app-debug.apk', 
        'appium:noReset': true,
    },
    iosCaps: {
        platformName: 'ios',
        'appium:platformVersion': '12.2',             
        'appium:deviceName': 'iPhone X',              
        'appium:noReset': true,                      
        'appium:app': __dirname + '/../ios/Runner.zip'
    }
};