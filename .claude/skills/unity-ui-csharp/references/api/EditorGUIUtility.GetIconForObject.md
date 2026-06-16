<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorGUIUtility.GetIconForObject.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| obj | The GameObject or MonoScript to query |

### Returns

**Texture2D** Returns the custom icon associated with the object. If there is no custom icon associated with the object, returns null.

### Description

Gets the custom icon associated with an object. Only GameObjects and MonoScripts have associated custom icons.

```csharp
using UnityEngine;
using UnityEditor;class Example
{
    [MenuItem("Examples/Get Icon for GameObject")]
    public static void GetIconForGameObject()
    {
        var go = GameObject.Find("Main Camera");
        var icon = EditorGUIUtility.GetIconForObject(go);
        Debug.Log("Icon for " + go + " is " + icon);
    }    [MenuItem("Examples/Get Icon for MonoScript")]
    public static void GetIconForMonoScript()
    {
        var monoScript = AssetDatabase.LoadAssetAtPath<MonoScript>("Assets/MyMonoBehaviour.cs");
        var icon = EditorGUIUtility.GetIconForObject(monoScript);
        Debug.Log("Icon for " + monoScript.GetClass().FullName + " is " + icon);
    }
}
```
