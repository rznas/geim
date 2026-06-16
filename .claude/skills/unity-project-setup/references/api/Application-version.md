<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Application-version.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Returns application version number (Read Only).

This function returns the current version of the application. This is read-only. To set the version number in Unity, go to **Edit**>**Project Settings**>**Player**.

Unity uses PlayerSettings.bundleVersion on all platforms, so `Application.version` returns that same version string at runtime.

```csharp
using UnityEngine;public class ApplicationVersionExample : MonoBehaviour
{
    void Start()
    {
        // This prints the value set in Edit>Project Settings>Player>Version (default 0.1).
        Debug.Log("Application Version : " + Application.version);
    }
}
```
