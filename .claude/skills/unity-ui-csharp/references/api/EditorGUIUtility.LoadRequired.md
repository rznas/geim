<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorGUIUtility.LoadRequired.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Load a required built-in resource.

This function will look in Assets/Editor Default Resources/ folder for the required resource. The example below shows an the loading of an iPhone texture and used to texture a cube.

```csharp
using UnityEngine;
using UnityEditor;public class LoadRequiredExample
{
    [MenuItem("Examples/LoadRequired Editor Example")]
    static void loadRequiredExample()
    {
        Texture tex  = (Texture)EditorGUIUtility.LoadRequired("BuildSettings.iPhone");        Renderer r = GameObject.Find("Cube").GetComponent<Renderer>();
        r.sharedMaterial.mainTexture = tex;
    }
}
```
