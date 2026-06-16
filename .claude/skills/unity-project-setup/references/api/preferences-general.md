<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/preferences-general.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# General preferences reference

The preferences in the General tab let you customize the overall behavior for working in Unity. To open the preferences, go to **Edit > Preferences > General** (macOS: **Unity > Settings > General**).

| **Property** | **Function** |
| --- | --- |
| **Load Previous Project on Startup** | Enable this setting to always load the previous project at startup. |
| **Disable Editor **Analytics**** | Enable this setting to stop the Editor automatically sending information back to Unity. Pro only. |
| **Auto-save scenes before building** | Automatically save your **scene** before it builds. |
| **Script Changes While Playing** | Choose the behavior of the Editor when scripts change while your game runs in the Editor:  **Recompile And Continue Playing**: Recompile your scripts and keep running the scene. This is the default behavior, but you might want to change it if your scripts rely on any non-serializable data.  **Recompile After Finished Playing**: Defer recompilation until you manually stop your scene, avoiding any interruption.  **Stop Playing And Recompile**: Immediately stops your scene for recompilation, so you can quickly restart testing. |
| **Code Optimization On Startup** | Choose whether to set code optimization mode to **Debug** or **Release** when the Editor starts. You can use **Debug** mode to attach external debugger software, but this mode makes C# performance slower when you run your project in Play mode in the Editor. **Release** mode gives faster C# performance when you run your project in Play mode in the Editor, but you can’t attach any external debuggers. For more information, refer to Code Optimization Mode. |
| **Editor Theme** | Select the background theme to use in the Editor:  **Light**: Applies a light grey background theme with black text.  **Dark**: Applies a dark background theme with white text. |
| **Editor Font** | Select which font to display in the Unity Editor. The default font is Inter. |
| **Editor Default Text Rendering Mode** | Defines the Editor’s rendering for text. SDF is the default rendering mode.  **Bitmap**: Offers sharper text on low-resolution displays using a rasterized bitmap approach. Use this mode for screens with lower DPI.  **SDF (Signed Distance Field)**: Offers scalable text rendering, but it might appear blurrier on low-DPI screens or smaller font sizes. The SDF mode uses a technique that enables efficient text scaling and rendering, though there might be a trade-off in sharpness on certain displays. |
| **Editor Text Sharpness** | Set how clear and sharp text in the Editor displays. |
| **Editor Text Generator Type** | Select from:  **Standard**: Use Unity’s built-in text generator.  **Advanced**: Use the advanced text generator. |
| **Device to use** | Select which GPU device to use by default, from a list of connected devices. |
| **Graph Snapping** | Align graph elements with other graph elements when you move them ingraph views. Packages such as **Shader** Graph use graph views. If **Graph Snapping** is disabled, graph elements move more freely. |
| **Open Game View on Play** | Open a Game view window when you enter Play mode if a Game view window isn’t open. You can also right-click the Play button on the toolbar to enable this setting. |
| **Use Project Path in Window Title** | Replace the name of the project in the main window title with the path of the project on disk. |
| **Interaction Mode** | Specifies how long the Editor can idle before it updates. After one frame finishes, the Editor waits up to the specified amount of time before the next frame begins.  This allows you to throttle Editor performance, and reduce consumption of CPU resources and power.  For example, if you want to test the Editor’s performance, set this property to **No Throttling**. If you want to conserve power (for example, to prolong battery life on a laptop computer), set this property to one of the throttled modes.  In throttled modes, the Editor stops idling if you interact with it (for example, by panning in the Scene view).  **Note:** In Play mode, Unity ignores any throttling that you apply using this preference. The editor updates as fast as possible unless you enable the VSync option in the Game view, or set `Application.targetFrameRate` to a value other than `-1`.  Choose from the following modes:  **Default**: The Editor idles up to 4 ms each tick. If a frame takes 5 ms or more, the Editor doesn’t idle at all, and the next frame starts automatically.  **No Throttling**: Each time a frame finishes, the next frame begins immediately. The Editor never waits, and updates as fast as possible.  This mode consumes a lot of CPU resources. If you are using a laptop computer, it can cause the battery to drain quickly.  **Monitor Refresh Rate**: The Editor idles up to the monitor’s update rate in milliseconds. For most monitors, this is 16 ms.  **Custom**: When enabled, you can use the **Frame Throttling (milliseconds)** property to specify how long the Editor can idle between frames. The value can be between 0 and 33 ms. 0 is equivalent to setting **Interaction Mode** to **No Throttling**. |
| **Package Manager log level** | Choose the level of detail you want the Package Manager logs to report:  **Error**: Display unexpected errors and failures only.  **Warn**: Display unusual situations that can cause issues.  **Info**: Display high-level informational-only messages.  **Verbose**: Display detailed informational messages.  **Debug**: Display high-level debugging messages.  **Silly**: Display detailed debugging messages. |
| **Enable extended Dynamic hints** | Select this to enable extended dynamic hints. Extended dynamic hints display more information when a property, object, or tool is hovered on for enough time or when a dynamic hint displays. |
| **Perform **Bump Map** Check** | Select this to enable bump map checks upon material imports, which helps check that textures used in a **normal map** material slot are actually defined as normal. |
| **Enable Shortcut Helper Bar** | Display the Helper Bar in the status bar at the bottom of the main Editor window. |
| **Enable PlayMode Tooltips** | Enable tooltips in the Editor while in Play mode |
| **Show All Windows in Taskbar** | Display secondary undocked Editor windows in the taskbar and **Alt+Tab** menu. This setting works on Windows only. If you enable this setting, undocked Editor windows minimize to the taskbar and, by default, combine into a single taskbar item. |
| **Busy Progress Delay** | Set the delay in seconds before the “Unity is busy” progress bar displays. |
| **“Don’t ask me again” checkboxes** | Select **Reset to defaults** to reset any dialog boxes you have selected **Don’t ask me again** to opt out of alerts. |

## Hierarchy window

Settings for how the Hierarchy window is displayed in the Editor.

| **Property** | **Function** |
| --- | --- |
| **Default Prefab Mode** | Select a prefab in prefab editing mode to use the following settings:  **In Isolation**: Hide the current scene and display the GameObjects that relate to the prefab itself.  **In Context**: Keep the rest of the scene visible, but prevent that scene from being edited. |
| **Rename new objects** | Rename **GameObjects** on creation. If disabled, Unity assigns newly created GameObjects a default name. |
| **Enable Alphanumeric Sorting** | Displays a button in the top-right corner of the Hierarchy window to toggle between sorting GameObjects by the default Transform sort, or alphanumeric sort order in the Hierarchy window. This setting isn’t available if you enable **Use new Hierarchy window**. |
| **Use new Hierarchy window** | Enables a different view of the Hierarchy window. **Important**: The **New Hierarchy** setting is in preview and might change in future versions of Unity. |
| **Enable Alternating Row Background** | Sets each row in the New Hierarchy window mode to have alternating background colors. |
| **Enable Query Builder** | Uses auto completion and visual queries in the search field of the new Hierarchy window mode. Disable to use the search in plain text mode. |

## Additional resources

- Project Settings reference
- Project configuration
