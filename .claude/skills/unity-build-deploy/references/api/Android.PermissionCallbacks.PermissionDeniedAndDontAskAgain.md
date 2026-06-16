<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Android.PermissionCallbacks.PermissionDeniedAndDontAskAgain.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| value | Permission name. |

### Description

Triggered when the user chooses **Deny And Don't Ask Again** for a permission request or denies the permission twice on newer Android versions, or the operating system determines that it should not be requested again.

If you do not subscribe to this event, Unity triggers PermissionCallbacks.PermissionDenied as a fallback. On Android versions 12 and newer, it's recommended to use PermissionCallbacks.PermissionDenied only as `PermissionCallbacks.PermissionDeniedAndDontAskAgain` might show different behavior.

Additional resources: Permission.ShouldShowRequestPermissionRationale
