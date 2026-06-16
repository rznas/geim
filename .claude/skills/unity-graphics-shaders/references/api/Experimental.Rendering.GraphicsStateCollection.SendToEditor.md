<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Experimental.Rendering.GraphicsStateCollection.SendToEditor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| fileName | Name of the GraphicsStateCollection file saved by the Editor. |

### Returns

**bool** True if successfully sent, false otherwise.

### Description

Send GraphicsStateCollection to the Editor using PlayerConnection.

This method sends serialized GraphicsStateCollection data to a connected Editor instance on-demand.

 The Editor instance will save the GraphicsStateCollection to disk in the open project's Assets folder. `SendToEditor` requires you to enable **Development Build** and **Autoconnect Profiler** in your project’s Build Profile settings.

```csharp
using UnityEngine;
using UnityEngine.Experimental.Rendering;
using UnityEngine.Networking.PlayerConnection;public class SendToEditorExample : MonoBehaviour
{
    public GraphicsStateCollection graphicsStateCollection;    void Start()
    {
        graphicsStateCollection = new GraphicsStateCollection();
        graphicsStateCollection.BeginTrace();
    }    void OnDestroy()
    {
        graphicsStateCollection.EndTrace();
        if (PlayerConnection.instance.isConnected)
        {
            graphicsStateCollection.SendToEditor("MyCollection");
        }
        else
        {
             Debug.Log("No PlayerConnection found! Collection not sent to Editor.");
        }
    }
}
```

Additional resources: SaveToFile, LoadFromFile.
