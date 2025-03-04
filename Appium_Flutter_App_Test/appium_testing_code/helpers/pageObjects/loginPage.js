const find = require('appium-flutter-finder');
const { expect } = require("chai");

class LoginPage {
    constructor(driver) {
        this.driver = driver;
    }

    // Define selectors using accessibility IDs
    get usernameInput() {
        return find.byValueKey("username");
    }

    get passwordInput() { 
        return find.byValueKey("password"); 
    }
    get loginButton()
    {
        return find.byText("continue");
    }

    // Methods to perform actions
    async login(username, password) {
        try {
            // Enter username
            await this.driver.elementSendKeys(this.usernameInput, username);
            console.log("Username entered:", username);
    
            // Enter password
            await this.driver.elementSendKeys(this.passwordInput, password);
            console.log("Password entered:", password);

            await this.driver.elementClick(this.loginButton);
        } catch (error) {
            console.error("Error during test:", error);
        }
    }
}

module.exports = LoginPage;

// // await this.driver.execute('flutter:waitFor', this.usernameInput);

// // // Enter the username
// // await this.driver.elementSendKeys(this.usernameInput, username);

// // // Enter the password
// // await this.driver.elementSendKeys(this.passwordInput, password);

// // // Click the login button
// // await this.driver.execute('flutter:click', this.loginButton);