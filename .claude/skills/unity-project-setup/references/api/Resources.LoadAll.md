<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Resources.LoadAll.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| path | Pathname of the target folder. When using the empty string (i.e., ""), the function will load the entire contents of the Resources folder. |
| systemTypeInstance | Type filter for objects returned. |

### Description

Loads all assets in a folder or file at `path` in a Resources folder.

If `path` refers to a folder, all assets in the folder will be returned. If `path` refers to a file, only that asset will be returned. The `path` is relative to any Resources folder inside the Assets folder of your project.

**Note:** All asset names and paths in Unity use forward slashes. Paths using backslashes will **not** work.

```csharp
// Loads all assets in the "Resources/Textures" folder
// Then picks a random one from the list.
// Note: Random.Range in this case returns [low,high]
// range, i.e. the high value is not included in the range.
using UnityEngine;public class ExampleClass : MonoBehaviour
{
    private Object[] textures;
    private GameObject go;    void Start()
    {
        textures = Resources.LoadAll("Textures", typeof(Texture2D));        foreach (var t in textures)
        {
            Debug.Log(t.name);
        }        go = GameObject.CreatePrimitive(PrimitiveType.Cube);
    }    void OnGUI()
    {
        if (GUI.Button(new Rect(10, 70, 150, 30), "Change texture"))
        {
            // change texture on cube
            Texture2D texture = (Texture2D)textures[Random.Range(0, textures.Length)];
            go.GetComponent<Renderer>().material.mainTexture = texture;
        }
    }
}
```

### Parameters

| Parameter | Description |
| --- | --- |
| path | Pathname of the target folder. When using the empty string (i.e., ""), the function will load the entire contents of the Resources folder. |

### Description

Loads all assets in a folder or file at `path` in a Resources folder.

If `path` refers to a folder, all assets in the folder will be returned. If `path` refers to a file, only that asset will be returned. Only objects of type `T` will be returned. The `path` is relative to any Resources folder inside the Assets folder of your project.

The script example below shows how LoadAll can be used with Linq.

```csharp
// Loads all assets in the "Resources/Textures" folder
// using Linq.
using UnityEngine;
using System.Linq;public class ExampleClass : MonoBehaviour
{
    void Start()
    {
        var textures = Resources.LoadAll("Textures", typeof(Texture2D)).Cast<Texture2D>().ToArray();
        foreach (var t in textures)
            Debug.Log(t.name);
    }
}
```
