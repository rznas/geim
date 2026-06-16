<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Experimental.Rendering.ScriptableBakedReflectionSystemSettings-system.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The currently active ScriptableBakedReflectionSystem, see IScriptableBakedReflectionSystem.

Set this property in a class with InitializeOnLoadAttribute or a method with InitializeOnLoadMethodAttribute with your own implementation.

```csharp
using UnityEditor;
using UnityEditor.Experimental.Rendering;// Empty ScriptableBakedReflectionSystem for the exemple
class CustomScriptableBakedReflectionSystem : ScriptableBakedReflectionSystem
{
    public CustomScriptableBakedReflectionSystem()
        : base(1)
    {
    }
}class CustomScriptableBakedReflectionSystemIntegration
{
    [InitializeOnLoadMethod]
    static void Initialize()
    {
        ScriptableBakedReflectionSystemSettings.system = new CustomScriptableBakedReflectionSystem();
    }
}
```
