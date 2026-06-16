<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Screen.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Provides access to display information.

Use this class to get a list of supported screen resolutions, change the current resolution, or hide/show the system mouse pointer.

When you launch your application, Unity immediately needs to use settings like the screen's resolution and full-screen mode to render the first frame before any custom code starts to run. This means Unity doesn't initially use your code to configure these settings. Instead, Unity gets the values of these settings from command line arguments, Player settings, or from PlayerPrefs.

**Priority of initial startup settings**

Unity determines the initial startup settings based on the following order of priority (highest to lowest):

1. **Command line arguments**: If you specify a setting's value via command line, Unity prioritizes and uses that setting.
2. **Changed Player settings**: If you don't use the command line to configure the setting, and you modify the setting's value in the Player settings, Unity uses those values. For example, in the Player settings, if you change **Fullscreen Mode**, **Default Screen Width**, or **Default Screen Height**, Unity will use those values to change the screen's full-screen mode and resolution at startup.
3. **Stored PlayerPrefs**: If you don't specify a setting's value via command line or Player settings, Unity checks if the setting is stored in PlayerPrefs, and uses the setting if found.
4. **Default Player settings**: Otherwise, Unity uses the original default Player settings as a fallback.

You can also implement your own logic, but Unity will only apply your logic after it starts to execute code.

**Persistence of Screen settings**

During gameplay, if the user changes the Screen settings, the settings will persist between launches. Unity writes these settings to PlayerPrefs, which saves these settings and stores them differently depending on the platform. Unity saves the following settings to PlayerPrefs:

- Full-screen mode
- Resolution (width and height)
- Display and game window position

Unity saves the settings to PlayerPrefs when any of the following situations occur:

- The application or user moves the window.
- The full-screen mode changes, either when you call Screen.SetResolution, or the user presses **Alt** + **Enter** on Windows or **Option** + **Enter** on Mac.
- The render resolution changes, such as when you call Screen.SetResolution, the user drags the window to resize it, or the user moves the window to a display with a different DPI.

### Static Properties

| Property | Description |
| --- | --- |
| autorotateToLandscapeLeft | Enables auto-rotation to landscape left. |
| autorotateToLandscapeRight | Enables auto-rotation to landscape right. |
| autorotateToPortrait | Enables auto-rotation to portrait. |
| autorotateToPortraitUpsideDown | Enables auto-rotation to portrait, upside down. |
| brightness | Indicates the current brightness of the screen. |
| currentResolution | The current screen resolution (Read Only). |
| cutouts | Returns a list of screen areas that do not display content (Read Only). |
| dpi | The current pixel density of the screen measured in dots-per-inch (DPI) (Read Only). |
| fullScreen | Enables full-screen mode for the application. |
| fullScreenMode | Set this property to one of the values in FullScreenMode to change the display mode of your application. |
| height | The current height of the screen window in pixels (Read Only). |
| mainWindowDisplayInfo | The display information associated with the display that the main application window is on. |
| mainWindowPosition | The position of the top left corner of the main window relative to the top left corner of the display. |
| msaaSamples | Get the requested MSAA sample count of the screen buffer. |
| orientation | Specifies logical orientation of the screen. |
| resolutions | Returns all full-screen resolutions that the monitor supports (Read Only). |
| safeArea | Returns the safe area of the screen in pixels (Read Only). |
| sleepTimeout | A power saving setting, allowing the screen to dim some time after the last active user interaction. |
| width | The current width of the screen window in pixels (Read Only). |

### Static Methods

| Method | Description |
| --- | --- |
| GetDisplayLayout | Retrieves layout information about connected displays such as names, resolutions, and refresh rates. |
| MoveMainWindowTo | Moves the main window to the specified position relative to the top left corner of the specified display. Position value is represented in pixels. Moving the window is an asynchronous operation, which can take multiple frames. |
| SetMSAASamples | Sets the given number of MSAA samples for the screen buffer. |
| SetResolution | Switches the screen resolution and refresh rate if supported. |
