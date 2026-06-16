<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/WebCamTexture-autoFocusPoint.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

This property allows you to set/get the auto focus point of the camera. This works only on **Android** and **iOS** devices.

Vector2.x and Vector2.y components are relative values in the range 0..1 with the origin (0, 0) positioned at the bottom left corner of the texture. This property can be set when the current texture is playing (after WebCamTexture.Play method has been called). After a new value has been set, the device camera automatically refocuses using the new auto focus point. After refocusing, the camera focus is then locked. In order to disable use of the focus point and switch back to continuous auto-focus mode, the autoFocusPoint property should be set to **null**. If this feature is not supported by the camera device or if it is currently not possible to focus (for example because the previous focus attempt has not yet finished) then the previous value for the focus point setting is not changed. Setting this property to a value where either x or y is outside of the range 0..1 causes the focus point to be reset to null and the camera to be switched back to continuous auto-focus mode.

**Note:** this feature may not be supported by front-facing camera devices.

Additional resources: WebCamDevice.isAutoFocusPointSupported.
