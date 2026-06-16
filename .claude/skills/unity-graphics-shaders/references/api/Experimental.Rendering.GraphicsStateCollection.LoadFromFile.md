<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Experimental.Rendering.GraphicsStateCollection.LoadFromFile.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| filePath | Location of the GraphicsStateCollection file. |

### Returns

**bool** True if the collection was successfully loaded, false otherwise.

### Description

Load the GraphicsStateCollection at the given path.

The file extension of GraphicsStateCollection is *.graphicsstate.

 **Note**: The Web platform doesn't support this function as the file system is not accessible.

```csharp
using UnityEngine;
using UnityEngine.Experimental.Rendering;public class LoadFromFileExample : MonoBehaviour
{
    public GraphicsStateCollection graphicsStateCollection;
    public string filePath;    void Start()
    {
        graphicsStateCollection = new GraphicsStateCollection();
        if (graphicsStateCollection.LoadFromFile(filePath))
        {
            Debug.Log("graphicsStateCollection contains " + graphicsStateCollection.totalGraphicsStateCount + " graphics states.");
        }
    }
}
```

Additional resources: SaveToFile.
