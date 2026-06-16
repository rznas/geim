<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/StaticEditorFlags.ReflectionProbeStatic.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Include this GameObject when when precomputing data for **Reflection Probes** whose **Type** property is set to **Baked**.

For more information, see the documentation on [[wiki:ReflectionProbes|Reflection Probes].

```csharp
using UnityEngine;
using UnityEditor;
public class StaticEditorFlagsExample
{
    [MenuItem("Examples/Create GameObject and set Static Editor Flags")]
    static void CreateGameObjectAndSetStaticEditorFlags()
    {
        // Create a GameObject
        var go = new GameObject("Example");
        // Set the GameObject's StaticEditorFlags
        var flags = StaticEditorFlags.ReflectionProbeStatic;
        GameObjectUtility.SetStaticEditorFlags(go, flags);
    }
}
```

Additional resources: GameObjectUtility.SetStaticEditorFlags, GameObject.isStatic
