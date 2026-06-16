<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/deep-linking.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Deep linking

Deep links are hyperlinks that take a user to a specific location within an application rather than a website. When a user selects a deep link, the application opens at the designated location, such as a specific **scene** in a Unity application. Unity uses the Application.absoluteURL property and Application.deepLinkActivated event to support deep linking.

## Enable deep linking

Before you can process deep links, you need to configure your application to react to them. The process to configure an application to react to specific URLs is platform-specific.

Unity supports deep links for the following platforms:

- iOS
- Android
- Universal Windows Platform
- macOS
- Web platform (no enabling required)

**Note**: On the Web platform, deep links are regular `http:` or `https:` web URLs and don’t rely on the application handler protocol `unitydl:`.

## Use deep links

There are two ways to process a deep link that depend on the current state of the application:

- The application isn’t running: The device opens the application and Application.absoluteURL stores the deep link URL that the device passes to the application.
- The application is running: The device passes the URL to the application and calls the Application.deepLinkActivated event using the deep link URL as a parameter. Application.absoluteURL updates at the same time.

In both cases, use Application.absoluteURL to select the scene to open in the application.

The following code sample shows you how to process a deep link depending on the current state of the application:

```csharp
using UnityEngine;
using UnityEngine.SceneManagement;

public class ProcessDeepLinkMngr : MonoBehaviour
{
    public static ProcessDeepLinkMngr Instance { get; private set; }
    public string deeplinkURL;
    private void Awake()
    {
        if (Instance == null)
        {
            Instance = this;
            Application.deepLinkActivated += onDeepLinkActivated;
            if (!string.IsNullOrEmpty(Application.absoluteURL))
            {
                // Cold start and Application.absoluteURL not null so process Deep Link.
                onDeepLinkActivated(Application.absoluteURL);
            }
            // Initialize DeepLink Manager global variable.
            else deeplinkURL = "[none]";
            DontDestroyOnLoad(gameObject);
        }
        else
        {
            Destroy(gameObject);
        }
    }

    private void onDeepLinkActivated(string url)
    {
        // Update DeepLink Manager global variable, so URL can be accessed from anywhere.
        deeplinkURL = url;

// Decode the URL to determine action.
// In this example, the application expects a link formatted like this:
// unitydl://mylink?scene1
        string sceneName = url.Split('?')[1];
        bool validScene;
        switch (sceneName)
        {
            case "scene1":
                validScene = true;
                break;
            case "scene2":
                validScene = true;
                break;
            default:
                validScene = false;
                break;
        }
        if (validScene) SceneManager.LoadScene(sceneName);
    }
}
```

## Test a deep link

To test a deep link, use the following steps:

1. Create a HTML file that includes the deep link to test.
2. Host the HTML file on a local web server.
3. Open the HTML file from a web browser on your device and click the deep link.

### Example HTML file

This is an example HTML file that you can use to test deep links. To redirect the link, change the `href` attribute in one of the `<a>` elements.

```
<html>
    <head>
       <meta charset="utf-8">
    </head>
    <body >
       <h1>My Deep Link Test page</h1>
       <p><a href="unitydl://mylink">Launch</a></p>
       <p><a href="unitydl://mylink?parameter">Launch with Parameter</a></p>
    </body>
</html>
```
