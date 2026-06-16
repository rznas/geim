<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/StaticEditorFlags.ContributeGI.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Include the target Mesh Renderer in global illumination calculations.

These calculations take place while precomputing lighting data at bake time. The ContributeGI property exposes the ReceiveGI property. The ContributeGI property only takes effect if you enable a global illumination setting such as Baked Global Illumination or Enlighten Realtime Global Illumination for the target Scene. For additional context, see this tutorial for setting up the Built-in Render Pipeline and lighting in Unity.

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
        var flags = StaticEditorFlags.ContributeGI;
        GameObjectUtility.SetStaticEditorFlags(go, flags);
    }
}
```

Additional resources: GameObjectUtility.SetStaticEditorFlags, GameObject.isStatic.
