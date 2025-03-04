const find = require('appium-flutter-finder');

class HomePage {
    constructor(driver) {
        this.driver = driver;
    }

    // Example element selectors for home screen
    get welcomeBanner() {
        return find.byText("Welcome");
    }
    get listViewKey()
    {
        return find.byValueKey("ListView_Key");
    }
    listViewIndex(index)
    {
        return find.byValueKey(index);
    }

    // Method to verify the home screen is displayed
    async isDisplayed() {
        return await this.driver.getElementText(this.welcomeBanner) === "Welcome";
    }

    async scrollListView(dx, dy) {
        await this.driver.execute('flutter:scroll', this.listViewKey, {
            dx: dx, // Horizontal scroll amount (positive or negative)
            dy: dy, // Vertical scroll amount (positive or negative)
            durationMilliseconds: 500, // Scroll duration in milliseconds
            frequency: 30, // Scroll frequency
        });
        console.log(`Scrolled ListView by dx: ${dx}, dy: ${dy}`);
    }

    async scrollToItem(index) {
        const item = this.listViewIndex(index);
        await this.driver.execute('flutter:scrollIntoView', item, {
            alignment: 0.5,
            // top: 0.0,
            // bottom:1.0 // Scroll until the item is centered (0.0 = top, 1.0 = bottom)
        });
        console.log(`Scrolled to item with index: ${index}`);
    }
}

module.exports = HomePage;