<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Application.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Provides access to application runtime data.

This class contains static methods for looking up information about and controlling the runtime data.

### Static Properties

| Property | Description |
| --- | --- |
| absoluteURL | The URL of the document. For WebGL, this is a web URL. For Android, iOS, or Universal Windows Platform (UWP) this is a deep link URL (Read Only). |
| backgroundLoadingPriority | Priority of background loading thread. |
| buildGUID | Returns a GUID for this build (Read Only). |
| cloudProjectId | A unique cloud project identifier. It is unique for every project (Read Only). |
| companyName | Returns application company name (Read Only). |
| consoleLogPath | Returns the path to the console log file, or an empty string if the current platform does not support log files. |
| dataPath | Contains the path to the game data folder on the target device (Read Only). |
| exitCancellationToken | Cancellation token raised on exiting Play mode (Editor) or on quitting the application (Read Only). |
| genuine | Returns false if application is altered in any way after it was built. |
| genuineCheckAvailable | Returns true if application integrity can be confirmed. |
| identifier | Returns the application identifier at runtime. |
| installerName | Returns the name of the store or package that installed the application (Read Only). |
| installMode | Returns application install mode (Read Only). |
| internetReachability | Returns the type of internet reachability currently possible on the device. |
| isBatchMode | Returns true when Unity is launched with the -batchmode flag from the command line (Read Only). |
| isConsolePlatform | Is the current Runtime platform a known console platform. |
| isEditor | Whether the game is running inside the Unity Editor (Read Only). |
| isFocused | Whether the Player currently has focus (Read Only). |
| isMobilePlatform | Identifies whether the current Runtime platform is a known mobile platform. |
| isPlaying | Returns true when called in any kind of built Player, or when called in the Editor in Play mode (Read Only). |
| persistentDataPath | Contains the path to a persistent data directory (Read-only). |
| platform | Returns the platform the game is running on (Read Only). |
| productName | Returns application product name (Read Only). |
| runInBackground | Determines whether the Player should run when the application is in the background |
| sandboxType | Returns application running in a sandbox environment (Read-only). |
| streamingAssetsPath | The path to the StreamingAssets folder (Read Only). |
| systemLanguage | The language in which the user's operating system is running in. |
| targetFrameRate | Specifies the target frame rate at which Unity tries to render your application. |
| temporaryCachePath | Contains the path to a temporary data / cache directory (Read Only). |
| unityVersion | The version of the Unity runtime used to play the content. |
| version | Returns application version number (Read Only). |

### Static Methods

| Method | Description |
| --- | --- |
| CanStreamedLevelBeLoaded | Checks if the built scene can be loaded. |
| GetStackTraceLogType | Get stack trace logging options. The default value is StackTraceLogType.ScriptOnly. |
| HasProLicense | Is Unity activated with the Pro license? |
| HasUserAuthorization | Check if the user has authorized use of the webcam or microphone on iOS and WebGL. |
| IsPlaying | Returns true if the given object is part of the playing world either in any kind of built Player or in Play Mode. |
| OpenURL | Opens the URL specified, subject to the permissions and limitations of your app’s current platform and environment. |
| Quit | Quits the player application. |
| RequestAdvertisingIdentifierAsync | Request an advertising ID for iOS and UWP. |
| RequestUserAuthorization | Request authorization to use the webcam or microphone on iOS or Web. |
| SetStackTraceLogType | Set stack trace logging options. The default value is StackTraceLogType.ScriptOnly. |
| Unload | Unloads the Unity Player. |

### Events

| Event | Description |
| --- | --- |
| deepLinkActivated | This event is raised when an application running on Android, iOS, or the Universal Windows Platform (UWP) is activated using a deep link URL. |
| focusChanged | Defines the delegate to use to register for events in which the focus gained or lost. |
| logMessageReceived | Event that is fired if a log message is received. |
| logMessageReceivedThreaded | Event that is fired if a log message is received. |
| lowMemory | The Application._lowMemory event occurs when your application receives a low-memory notification from the device it is running on. |
| memoryUsageChanged | Informs about significant changes in the application's memory usage. |
| onBeforeRender | An event that is invoked every frame, on all platforms, immediately before rendering. |
| quitting | Unity raises this event when the Player application is quitting. |
| unloading | Unity raises this event when the Player is unloading. |
| wantsToQuit | Unity raises this event when the Player application wants to quit. |

### Delegates

| Delegate | Description |
| --- | --- |
| AdvertisingIdentifierCallback | Delegate method for fetching advertising ID. |
| LogCallback | Use this delegate type with Application.logMessageReceived or Application.logMessageReceivedThreaded to monitor what gets logged. |
| LowMemoryCallback | This is the delegate function when a mobile device notifies of low memory. |
| MemoryUsageChangedCallback | A delegate for the Application.memoryUsageChanged vent. |
