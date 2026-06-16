<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Handles.DrawWireCube.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Draw a wireframe box with `center` and `size`.

```csharp
using UnityEditor;
using UnityEngine;
using System.Collections;//this class should exist somewhere in your project
public class WireCubeExample : MonoBehaviour
{
    public Vector3 size;    // ...other code...
}
```

```csharp
// Editor script. This would go into an Editor directory.
using UnityEditor;
using UnityEngine;[CustomEditor(typeof(WireCubeExample))]
public class WireBoxExample : Editor
{
    void OnSceneGUI()
    {
        Handles.color = Color.yellow;
        WireCubeExample myObj = (WireCubeExample)target;
        Handles.DrawWireCube(myObj.transform.position, myObj.size);
    }
}
```
