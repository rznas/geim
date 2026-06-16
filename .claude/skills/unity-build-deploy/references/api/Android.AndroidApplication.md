<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Android.AndroidApplication.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Use this class to access the runtime data of your Android application.

### Static Properties

| Property | Description |
| --- | --- |
| currentActivity | Indicates the Java instance of the current activity. |
| currentConfiguration | Provides current configuration for the running application. |
| currentContext | Indicates the Java instance of the current context. |
| unityPlayer | Indicates the Unity bridge Java instance used by an activity or a service. |

### Static Methods

| Method | Description |
| --- | --- |
| InvokeOnUIThread | Invokes delegate on Android application's UI thread. |
| InvokeOnUnityMainThread | Invokes delegate on Android application's main thread. |

### Events

| Event | Description |
| --- | --- |
| onConfigurationChanged | A callback to detect the device configuration changes when the application is running. |
