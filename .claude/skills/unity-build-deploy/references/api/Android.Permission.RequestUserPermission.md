<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Android.Permission.RequestUserPermission.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| permission | A string that describes the permission to request. For permissions which Unity has not predefined, you can provide Android's in-built permission strings such as "android.permission.READ_CONTACTS". For a list of permission strings, refer to Android's documentation on [Manifest.permission](https://developer.android.com/reference/android/Manifest.permission). |

### Description

Request the user to grant access to a device resource or information that requires authorization.

The `RequestUserPermission` method doesn't wait for the user response and returns immediately. If the system permission dialog is displayed, the application suspends.

You can use HasUserAuthorizedPermission method to check the status of the permission request.

The following code example checks whether the user has granted microphone access and requests permission if access has not been granted.

```csharp
using UnityEngine;
using UnityEngine.Android;public class RequestPermissionExample : MonoBehaviour
{
    void Start()
    {
        if (Permission.HasUserAuthorizedPermission(Permission.Microphone))
        {
            // The user has authorized use of the microphone.
        }
        else
        {
            // The user has not authorized microphone usage.
            // Ask for microphone permission.
            Permission.RequestUserPermission(Permission.Microphone);
        }
    }
}
```

### Parameters

| Parameter | Description |
| --- | --- |
| permission | A string that describes the permission to request. For permissions which Unity has not predefined, you can provide Android's in-built permission strings such as "android.permission.READ_CONTACTS". For a list of permission strings, refer to Android's documentation on [Manifest.permission](https://developer.android.com/reference/android/Manifest.permission). |
| callbacks | An instance of callbacks invoked when permission request is executed. |

### Description

Request the user to grant access to a device resource or information that requires authorization.

The `RequestUserPermission` method doesn't wait for the user response and returns immediately. If the system permission dialog is displayed, the application suspends.

This version of `RequestUserPermission` invokes an instance of callbacks when executed.

You can use HasUserAuthorizedPermission method to check the status of the permission request.

The following code example checks whether the user has granted microphone access and requests permission with callbacks if the access has not been granted.

```csharp
using UnityEngine;
using UnityEngine.Android;public class RequestPermissionExample : MonoBehaviour
{
    internal void PermissionCallbacks_PermissionDeniedAndDontAskAgain(string permissionName)
    {
        Debug.Log($"{permissionName} PermissionDeniedAndDontAskAgain");
    }    internal void PermissionCallbacks_PermissionGranted(string permissionName)
    {
        Debug.Log($"{permissionName} PermissionCallbacks_PermissionGranted");
    }    internal void PermissionCallbacks_PermissionDenied(string permissionName)
    {
        Debug.Log($"{permissionName} PermissionCallbacks_PermissionDenied");
    }    void Start()
    {
        if (Permission.HasUserAuthorizedPermission(Permission.Microphone))
        {
            // The user authorized use of the microphone.
        }
        else
        {
            // The user has not authorized microphone usage.
            // Request microphone permission with callbacks.
            var callbacks = new PermissionCallbacks();
            callbacks.PermissionDenied += PermissionCallbacks_PermissionDenied;
            callbacks.PermissionGranted += PermissionCallbacks_PermissionGranted;
            callbacks.PermissionDeniedAndDontAskAgain += PermissionCallbacks_PermissionDeniedAndDontAskAgain;
            Permission.RequestUserPermission(Permission.Microphone, callbacks);
        }
    }
}
```
