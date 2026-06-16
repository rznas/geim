<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LocationService-isEnabledByUser.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Indicates whether the device allows the application to access the location service.

Check this property before you start location updates to determine if the device has location services enabled and that the application has access to them.

**Android**: The property returns false if the application has no permission to access location. If you start the location service updates, the user receives location permission request (unless already granted or permanently denied). Before starting the location service updates, you can query to check whether the application has location permission.

**iOS**: The property returns false if the application has no permission to access location. If you start the location updates anyway, the device prompts the user with a confirmation panel asking whether to enable location services for the application. For more information, refer to [Apple's developer documentation](https://developer.apple.com/documentation/corelocation/cllocationmanager/locationservicesenabled()?language=objc).

**WebGL**: The property is false until you start location updates. Once location updates start, it reflects the permissions granted by the user in the browser.
