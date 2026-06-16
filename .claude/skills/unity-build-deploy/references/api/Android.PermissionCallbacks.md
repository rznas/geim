<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Android.PermissionCallbacks.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Contains callbacks invoked when permission request is executed using Permission.RequestUserPermission.

### Events

| Event | Description |
| --- | --- |
| PermissionDenied | Triggered when the user chooses Deny for a permission request. |
| PermissionDeniedAndDontAskAgain | Triggered when the user chooses Deny And Don't Ask Again for a permission request or denies the permission twice on newer Android versions, or the operating system determines that it should not be requested again. |
| PermissionGranted | Triggered when the user chooses Allow for a permission request. |
| PermissionRequestDismissed | Triggered when the user dismisses the permission request without explicitly choosing any option. |

### Inherited Members

### Properties

| Property | Description |
| --- | --- |
| javaInterface | Java interface implemented by the proxy. |

### Public Methods

| Method | Description |
| --- | --- |
| equals | The equivalent of the java.lang.Object equals() method. |
| hashCode | The equivalent of the java.lang.Object hashCode() method. |
| Invoke | Called by the java vm whenever a method is invoked on the java proxy interface. You can override this to run special code on method invocation, or you can leave the implementation as is, and leave the default behavior which is to look for c# methods matching the signature of the java method. |
| toString | The equivalent of the java.lang.Object toString() method. |
