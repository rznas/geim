<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorGUIUtility.Load.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Load a built-in resource.

This function will look in Assets/Editor Default Resources/ + path for the resource. If not there, it will try the built-in editor resources by name.

```csharp
using UnityEngine;
using UnityEditor;public class LoadExample
{
    [MenuItem("Examples/Load Editor Texture Example")]
    static void loadExample()
    {
        Texture tex  = (Texture)EditorGUIUtility.Load("aboutwindow.mainheader");
        Debug.Log("Got: " + tex.name + " !");        Renderer r = GameObject.Find("Cube").GetComponent<Renderer>();
        r.sharedMaterial.mainTexture = tex;
    }
}
```
