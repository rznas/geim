<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/deep-linking-ios.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Deep linking on iOS

Deep links are hyperlinks outside of your application that take a user to a specific location within the application rather than a website. When a user clicks a deep link, the application opens from the designated location, such as a specific **scene** in a Unity application. For more information about deep links and how to use them, refer to Deep linking.

There are two ways to enable deep links for iOS applications: URL schemes and universal links.

For information on how to use deep links and handle them when your application opens, refer to Using deep links.

## URL schemes

A URL scheme specifies a link structure that your iOS application refers to. The device opens the application when the user clicks a deep link that matches the URL scheme structure. To add a URL scheme, use the following steps:

1. Go to **Edit** > **Project Settings** > **Player** > **iOS** > **Other Settings** > **Configuration**.
2. Expand **Supported URL schemes** and set the following properties:
  - **Size** to `1`. To support multiple URL schemes, set this to the total number of schemes you want to use.
  - **Element 0** to the name of your URL scheme. Enter only the scheme name, without `://`. For example, enter `unitydl` to open your application when the device processes links that start with `unitydl://`.

After you build and deploy your application, it opens when the device processes links that start with the URL scheme you configured.

## Universal links

Universal links are similar to deep links because they open a specific location within an application. However, if the application isn’t installed, the universal link opens a URL in the user’s default browser. To enable universal links, refer to Apple’s documentation on [Allowing Apps and Websites to Link to Your Content](https://developer.apple.com/documentation/xcode/allowing-apps-and-websites-to-link-to-your-content).

## Additional resources

- Deep linking
