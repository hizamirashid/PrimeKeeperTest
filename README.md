# PrimeKeeperTest

Create an app in Xcode that contains two screens, `Home` and `Settings`. The settings screen should have the navigation bar on top.

# Part 1

* The `Home` screen should be the first screen. On the first screen, create a button with the text `Settings`. Upon clicking the `Settings`, open up a modal/dialog/alert box that says `Going to Screen` with the actions `Okay` and `Cancel`. Upon clicking `Okay`, the app should navigate to the `Settings` page.
* The `Settings` screen should have a `Home` that also opens up a modal/dialog/alert box that says `Going to Home`, with the actions `Okay` and `Cancel`. Upon clicking `Okay`, the app should navigate to the `Home` page, using the same action as navbar's back button.


# Part 2

* After finishing the app in Part 1, we'll add another feature to it. The `Settings` page should have an indication whether the app is in `Debug` mode or `Release` mode by means of a text in the `Settings` screen. Use the string `Debug` or `Release` for the text.
* To make this happen, create two Configurations (under Project > Info > Configurations), one named `Debug` that will make use of `Debug.xcconfig`, and another named `Release` that will make use of `Release.xcconfig`. You'll have to create `Debug.xcconfig` yourself.
* **Bonus**: Make `Debug.xcconfig` and `Release.xcconfig` each produces an app that can coexist with each other.
