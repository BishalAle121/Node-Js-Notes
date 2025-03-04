const { expect } = require("chai");
const BaseTest = require("../../bestTest.js");
const LoginPage = require("../../helpers/pageObjects/loginPage");
const HomePage = require("../../helpers/pageObjects/homePage");
const loginData = require("../data/loginData.json");
const readline = require('readline');
const LogOut = require('../../helpers/pageObjects/logOut');

describe("Integration Test: Login Flow", function () {
  let test, loginPage, homePage, logout_obj;
  this.timeout(30000);

  // Create readline interface
  const rl = readline.createInterface({
    input: process.stdin,
    output: process.stdout
  });

  // Use a promise to handle asynchronous input
  function getPlatformInput() {
    return new Promise((resolve) => {
      rl.question("Enter platform Name (android/ios): ", (answer) => {
        rl.close(); // Close the interface once input is received
        resolve(answer);
      });
    });
  }

  // Handle platform input and test execution
  let platform;
  before(async function () {
    platform = await getPlatformInput();
    
    // Check if the platform is empty
    if (platform === "") {
      console.log("Please select a platform.");
      return; // Exit if no platform is provided
    }

    console.log("Selected Platform: ", platform);

    test = new BaseTest();
    await test.init(platform); // Initialize test with the selected platform
    loginPage = new LoginPage(test.driver);
    homePage = new HomePage(test.driver);
    logout_obj = new LogOut(test.driver);
  });

  it("should not login with invalid credentials", async function () {
    await loginPage.login(loginData.invalid.username, loginData.invalid.password);
    // const errorText = await test.driver.getElementText(loginPage.loginStatusMessage) === "failed";
    // expect(errorText).to.be.true;

  });

  it("should login successfully with valid credentials", async function () {
    await loginPage.login(loginData.valid.username, loginData.valid.password);
    // const displayed = await homePage.isDisplayed();
    // expect(displayed).to.be.true;
    await logout_obj.logout();
  });

  // Other test cases...

  after(async function () {
    await test.tearDown();
  });
});
