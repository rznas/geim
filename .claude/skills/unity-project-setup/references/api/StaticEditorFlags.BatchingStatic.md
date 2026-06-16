<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/StaticEditorFlags.BatchingStatic.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Combine the GameObject's Mesh with other eligible Meshes, to potentially reduce runtime rendering costs.

For more information, see the documentation on Static Batching.

Note that you can use StaticBatchingUtility.Combine to combine Meshes that do not have this StaticEditorFlag enabled at runtime.

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
        var flags = StaticEditorFlags.BatchingStatic;
        GameObjectUtility.SetStaticEditorFlags(go, flags);
    }
}
```

Additional resources: GameObjectUtility.SetStaticEditorFlags, GameObject.isStatic, StaticBatchingUtility.Combine
