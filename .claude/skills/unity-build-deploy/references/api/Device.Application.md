<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Device.Application.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Access to platform-specific application runtime data.

This class has the same functionality as Application and also mimics platform-specific behavior in the Unity Editor. Use it together with the Device Simulator to test platform-specific behaviors inside the Editor. Outside of the Editor, this class behaves exactly like the Application class. Unity strips all simulation capabilities during the build process. Use the original Application class if you work directly with the Unity Editor (for example, to create a custom Editor tool) and you don't need to use any simulated values.

### Static Properties

| Property | Description |
| --- | --- |
| absoluteURL | This has the same functionality as Application.absoluteURL. At the moment, the Device Simulator doesn't support simulation of this property. |
| backgroundLoadingPriority | This has the same functionality as Application.backgroundLoadingPriority. At the moment, the Device Simulator doesn't support simulation of this property. |
| buildGUID | This has the same functionality as Application.buildGUID. At the moment, the Device Simulator doesn't support simulation of this property. |
| cloudProjectId | This has the same functionality as Application.cloudProjectId. At the moment, the Device Simulator doesn't support simulation of this property. |
| companyName | This has the same functionality as Application.companyName. At the moment, the Device Simulator doesn't support simulation of this property. |
| consoleLogPath | This has the same functionality as Application.consoleLogPath. At the moment, the Device Simulator doesn't support simulation of this property. |
| dataPath | This has the same functionality as Application.dataPath. At the moment, the Device Simulator doesn't support simulation of this property. |
| exitCancellationToken | Cancellation token raised on exiting play mode (editor) or on quitting the application (Read Only). |
| genuine | This has the same functionality as Application.genuine. At the moment, the Device Simulator doesn't support simulation of this property. |
| genuineCheckAvailable | This has the same functionality as Application.genuineCheckAvailable. At the moment, the Device Simulator doesn't support simulation of this property. |
| identifier | This has the same functionality as Application.identifier. At the moment, the Device Simulator doesn't support simulation of this property. |
| installerName | This has the same functionality as Application.installerName. At the moment, the Device Simulator doesn't support simulation of this property. |
| installMode | This has the same functionality as Application.installMode. At the moment, the Device Simulator doesn't support simulation of this property. |
| internetReachability | This has the same functionality as Application.internetReachability and also mimics platform-specific behavior in the Unity Editor. |
| isBatchMode | This has the same functionality as Application.isBatchMode. At the moment, the Device Simulator doesn't support simulation of this property. |
| isConsolePlatform | This has the same functionality as Application.isConsolePlatform and also mimics platform-specific behavior in the Unity Editor. |
| isEditor | This has the same functionality as Application.isEditor and also mimics platform-specific behavior in the Unity Editor. |
| isFocused | This has the same functionality as Application.isFocused. At the moment, the Device Simulator doesn't support simulation of this property. |
| isMobilePlatform | This has the same functionality as Application.isMobilePlatform and also mimics platform-specific behavior in the Unity Editor. |
| isPlaying | This has the same functionality as Application.isPlaying. At the moment, the Device Simulator doesn't support simulation of this property. |
| persistentDataPath | This has the same functionality as Application.persistentDataPath. At the moment, the Device Simulator doesn't support simulation of this property. |
| platform | This has the same functionality as Application.platform and also mimics platform-specific behavior in the Unity Editor. |
| productName | This has the same functionality as Application.productName. At the moment, the Device Simulator doesn't support simulation of this property. |
| runInBackground | This has the same functionality as Application.runInBackground. At the moment, the Device Simulator doesn't support simulation of this property. |
| sandboxType | This has the same functionality as Application.sandboxType. At the moment, the Device Simulator doesn't support simulation of this property. |
| streamingAssetsPath | This has the same functionality as Application.streamingAssetsPath. At the moment, the Device Simulator doesn't support simulation of this property. |
| systemLanguage | This has the same functionality as Application.systemLanguage and also mimics platform-specific behavior in the Unity Editor. |
| targetFrameRate | This has the same functionality as Application.targetFrameRate. At the moment, the Device Simulator doesn't support simulation of this property. |
| temporaryCachePath | This has the same functionality as Application.temporaryCachePath. At the moment, the Device Simulator doesn't support simulation of this property. |
| unityVersion | This has the same functionality as Application.unityVersion. At the moment, the Device Simulator doesn't support simulation of this property. |
| version | This has the same functionality as Application.version. At the moment, the Device Simulator doesn't support simulation of this property. |

### Static Methods

| Method | Description |
| --- | --- |
| CanStreamedLevelBeLoaded | This has the same functionality as Application.CanStreamedLevelBeLoaded. At the moment, the Device Simulator doesn't support simulation of this method. |
| GetStackTraceLogType | This has the same functionality as Application.GetStackTraceLogType. At the moment, the Device Simulator doesn't support simulation of this method. |
| HasProLicense | This has the same functionality as Application.HasProLicense. At the moment, the Device Simulator doesn't support simulation of this method. |
| HasUserAuthorization | This has the same functionality as Application.HasUserAuthorization. At the moment, the Device Simulator doesn't support simulation of this method. |
| IsPlaying | This has the same functionality as Application.IsPlaying. At the moment, the Device Simulator doesn't support simulation of this method. |
| OpenURL | This has the same functionality as Application.OpenURL. At the moment, the Device Simulator doesn't support simulation of this method. |
| Quit | This has the same functionality as Application.Quit. At the moment, the Device Simulator doesn't support simulation of this method. |
| RequestAdvertisingIdentifierAsync | This has the same functionality as Application.RequestAdvertisingIdentifierAsync. At the moment, the Device Simulator doesn't support simulation of this method. |
| RequestUserAuthorization | This has the same functionality as Application.RequestUserAuthorization. At the moment, the Device Simulator doesn't support simulation of this method. |
| SetStackTraceLogType | This has the same functionality as Application.SetStackTraceLogType. At the moment, the Device Simulator doesn't support simulation of this method. |
| Unload | This has the same functionality as Application.Unload. At the moment, the Device Simulator doesn't support simulation of this method. |

### Events

| Event | Description |
| --- | --- |
| deepLinkActivated | This has the same functionality as Application.deepLinkActivated. At the moment, the Device Simulator doesn't support simulation of this event. |
| focusChanged | This has the same functionality as Application.focusChanged. At the moment, the Device Simulator doesn't support simulation of this event. |
| logMessageReceived | This has the same functionality as Application.logMessageReceived. At the moment, the Device Simulator doesn't support simulation of this event. |
| logMessageReceivedThreaded | This has the same functionality as Application.logMessageReceivedThreaded. At the moment, the Device Simulator doesn't support simulation of this event. |
| lowMemory | This has the same functionality as Application.lowMemory and also mimics platform-specific behavior in the Unity Editor. |
| memoryUsageChanged | This has the same functionality as Application.memoryUsageChanged. |
| onBeforeRender | This has the same functionality as Application.onBeforeRender. At the moment, the Device Simulator doesn't support simulation of this event. |
| quitting | This has the same functionality as Application.quitting. At the moment, the Device Simulator doesn't support simulation of this event. |
| unloading | This has the same functionality as Application.unloading. At the moment, the Device Simulator doesn't support simulation of this event. |
| wantsToQuit | This has the same functionality as Application.wantsToQuit. At the moment, the Device Simulator doesn't support simulation of this event. |
