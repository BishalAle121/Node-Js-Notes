const find = require('appium-flutter-finder');
const expect = require('chai').expect;

class LogOut
{
    constructor(driver)
    {
        this.driver = driver;
    }
    async logout()
    {
        await this.driver.elementClick(find.pageBack());
    }
}
module.exports = LogOut;