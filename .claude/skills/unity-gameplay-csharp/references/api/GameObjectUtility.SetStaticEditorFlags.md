<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GameObjectUtility.SetStaticEditorFlags.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| go | The GameObject whose Static Editor Flags you want to set. |
| flags | The StaticEditorFlags to set on the GameObject. |

### Description

Sets the StaticEditorFlags of the specified GameObject.

StaticEditorFlags determine which Unity systems consider a GameObject as static, and include the GameObject in their precomputations in the Unity Editor. Setting StaticEditorFlags at runtime has no effect on these systems.

For more information, see the Unity Manual documentation on Static Editor Flags.

The code in this example enables the **Occludee Static** and **Occluder Static** StaticEditorFlags for a GameObject:

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
        var flags = StaticEditorFlags.OccluderStatic | StaticEditorFlags.OccludeeStatic;
        GameObjectUtility.SetStaticEditorFlags(go, flags);
    }
}
```

Additional resources: StaticEditorFlags, GameObject.isStatic
