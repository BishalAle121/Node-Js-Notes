const path = require('path');
const fs = require('fs/promises'); // Import fs/promises to work with async/await
const readline = require('readline');
const BaseTest = require("../../bestTest.js");
const LoginPage = require("../../helpers/pageObjects/loginPage");
const HomePage = require("../../helpers/pageObjects/homePage");
const LogOut = require('../../helpers/pageObjects/logOut');

let username_password = [];
let username = [];
let password = [];
const fileLocation = path.join(__dirname, '..', 'data', 'valid_login_data.json');

// Function to load data asynchronously
async function loadData() {
  try {
    const data = await fs.readFile(fileLocation, 'utf-8');
    username_password = JSON.parse(data);
    username_password.forEach((element) => {
      username.push(element.username);
      password.push(element.password);
    });
    // After loading data, start the test
    runTests();
  } catch (error) {
    console.log("Error reading file:", error);
  }
}

// Function to run tests
function runTests() {
  describe("Unit Test: Valid Login", function () {
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
      test = new BaseTest();
      await test.init(platform); // Initialize test with the selected platform
      loginPage = new LoginPage(test.driver);
      homePage = new HomePage(test.driver);
      logout_obj = new LogOut(test.driver);
    });

    for (let i = 0; i < username.length; i++) {
      it("should login successfully with valid credentials", async function () {
        await loginPage.login(username[i], password[i]);
        await logout_obj.logout();
      });
    }
  });
}

// Start by loading data and running tests
loadData();
