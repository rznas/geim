<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Android.Permission.HasUserAuthorizedPermission.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| permission | A string representing the permission to request. For permissions which Unity has not predefined, you can provide Android's in-built permission strings such as "android.permission.READ_CONTACTS". For a list of permission strings, refer to Android's documentation on [Manifest.permission](https://developer.android.com/reference/android/Manifest.permission). |

### Returns

**bool** Whether the requested permission has been granted.

### Description

Check if the user has granted access to a device resource or information that requires authorization.

```csharp
using UnityEngine;
using UnityEngine.Android;public class CheckPermissionScript : MonoBehaviour
{
    void Start()
    {
        if (Permission.HasUserAuthorizedPermission(Permission.Microphone))
            Debug.Log("Microphone permission has been granted.");
    }
}
```
