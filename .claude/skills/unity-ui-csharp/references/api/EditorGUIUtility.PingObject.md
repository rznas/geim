<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorGUIUtility.PingObject.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| obj | The object to be pinged. |

### Description

Ping an object in the Scene like clicking it in an inspector.

PingObject will cause the Hierarchy to highlight the pinged object. The pinged object does not have to be selected. For example GameObject.Find can be used to locate an object to ping.

```csharp
// Pings the currently selected Object
using UnityEditor;
using UnityEngine;public class PingObjectExample
{
    [MenuItem("Examples/Ping Selected")]
    static void Ping()
    {
        if (!Selection.activeObject)
        {
            Debug.Log("Select an object to ping");
            return;
        }        EditorGUIUtility.PingObject(Selection.activeObject);
    }
}
```
