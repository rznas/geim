<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/StaticEditorFlags.NavigationStatic.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Include the GameObject when precomputing navigation data.

For more information, see the documentation on [[wiki:nav-NavigationSystem|the Navigation system].

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
        var flags = StaticEditorFlags.NavigationStatic;
        GameObjectUtility.SetStaticEditorFlags(go, flags);
    }
}
```

Additional resources: GameObjectUtility.SetStaticEditorFlags, GameObject.isStatic
