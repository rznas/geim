<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Android.UserBuildSettings-linkTimeOptimization.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Use the precompiled and link time optimized (ThinLTO) Unity engine code (libunity.so) for non-development builds.

Use this property for improved runtime performance and reduced memory usage. For more information, refer to the documentation on ThinLTO.

**Notes:**

- Only supported on Meta Quest. Unity ignores this property on unsupported platforms.
- You can use link time optimized Unity engine code if your project uses IL2CPP scripting backend and Strip Engine Code is disabled. This doesn't affect IL2CPP compilation.

```csharp
using UnityEditor.Android;
using Unity.Android.Types;public class Settings
{
    public void Setup()
    {
        UserBuildSettings.linkTimeOptimization = AndroidLinkTimeOptimization.Thin;
    }
}
```
