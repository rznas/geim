<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Experimental.Rendering.GraphicsStateCollection.SaveToFile.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| filePath | Output location of GraphicsStateCollection serialized data. |

### Returns

**bool** True if collection successfully saved, false otherwise.

### Description

Save GraphicsStateCollection to disk.

The file extension of GraphicsStateCollection is *.graphicsstate.

 For the Web platform, this function starts a browser download of the file, and uses your `filepath` to name the file. Unity saves this file to the download location you set in the browser preferences. You need to manually move this file to your project Assets folder to use it in Unity.

```csharp
using UnityEngine;
using UnityEngine.Experimental.Rendering;public class SaveToFileExample : MonoBehaviour
{
    public GraphicsStateCollection graphicsStateCollection;
    public string filePath;    void Start()
    {
        graphicsStateCollection = new GraphicsStateCollection();
        graphicsStateCollection.BeginTrace();
    }    void OnDestroy()
    {
        graphicsStateCollection.EndTrace();
        graphicsStateCollection.SaveToFile(filePath);
    }
}
```

Additional resources: LoadFromFile, SendToEditor.
