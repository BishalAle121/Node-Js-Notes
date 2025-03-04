// const find = require('appium-flutter-finder');
// const { expect } = require("chai");

// class AncestorExample {
//   constructor(driver) {
//     this.driver = driver;
//   }

//   async testAncestor() {
//     // Find the ancestor of the first TextField inside a Form
//     const firstTextFieldAncestor = await this.driver.findElement(
//       find.ancestor({
//         of: find.byType('TextField').at(0), // The first TextField in the widget tree
//         matching: find.byType('Form'), // Matching ancestor of type Form
//       })
//     );
//     expect(firstTextFieldAncestor).to.not.be.null;  // Ensure ancestor is found

//     // Find the ancestor of the second TextField inside a Form
//     const secondTextFieldAncestor = await this.driver.findElement(
//       find.ancestor({
//         of: find.byType('TextField').at(1), // The second TextField in the widget tree
//         matching: find.byType('Form'), // Matching ancestor of type Form
//       })
//     );
//     expect(secondTextFieldAncestor).to.not.be.null;  // Ensure ancestor is found

//     // Optionally, interact with the fields, for example:
//     await this.driver.findElement(find.byKey('first_name_text_field')).sendKeys("John");
//     await this.driver.findElement(find.byKey('last_name_text_field')).sendKeys("Doe");

//     // You can check that the entered values are correct
//     const firstName = await this.driver.findElement(find.byKey('first_name_text_field')).getText();
//     const lastName = await this.driver.findElement(find.byKey('last_name_text_field')).getText();

//     expect(firstName).to.equal('John');
//     expect(lastName).to.equal('Doe');
//   }
// }

// module.exports = AncestorExample;
