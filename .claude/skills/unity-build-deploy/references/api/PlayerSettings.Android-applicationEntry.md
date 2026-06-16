<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PlayerSettings.Android-applicationEntry.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Application entry classes to include.

**Note:** You can specify multiple application entries for development purposes, this will cause two application icons to appear on Android device. You should always specify a **single entry** when publishing your app to a store.

Additional resources: AndroidApplicationEntry.

```csharp
using UnityEngine;
using UnityEditor;
using UnityEditor.Build;
using UnityEditor.Build.Reporting;class MyCustomBuildProcessor : IPreprocessBuildWithContext
{
    public int callbackOrder => 0;    public void OnPreprocessBuild(BuildCallbackContext ctx)
    {
        PlayerSettings.Android.applicationEntry = AndroidApplicationEntry.Activity | AndroidApplicationEntry.GameActivity;
    }
}
```
