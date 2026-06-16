<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AndroidDisplayOptions.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Options to configure how your application renders on Android devices.

Set the value of this enum to displayOptions property.

```csharp
// This example demonstrates how to disable the default rendering behavior for secondary screens
using UnityEditor;
using UnityEditor.Build;
using UnityEditor.Build.Reporting;
using UnityEngine;
class MyCustomBuildProcessor : IPreprocessBuildWithReport
{
    public int callbackOrder => 0;
    public void OnPreprocessBuild(BuildReport report)
    {
        PlayerSettings.Android.displayOptions = AndroidDisplayOptions.None;
    }
}
```

### Properties

| Property | Description |
| --- | --- |
| None | Disables any configurations for rendering the application. |
| DetectPresentationDisplay | The Unity Player automatically renders the camera output on a secondary screen. |
