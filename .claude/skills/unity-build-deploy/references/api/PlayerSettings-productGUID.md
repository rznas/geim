<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PlayerSettings-productGUID.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Returns a unique project ID.

When you create a project, Unity assigns it a unique project identifier. This identifier remains constant unless you manually change it.

```csharp
using UnityEngine;
using UnityEditor;public class ProductGUIDDisplay
{
    [RuntimeInitializeOnLoadMethod(RuntimeInitializeLoadType.AfterSceneLoad)]
    private static void DisplayProductGUID()
    {
        #if UNITY_EDITOR
            string productGUID = PlayerSettings.productGUID.ToString();
            Debug.Log("Product GUID: " + productGUID);
        #else
            Debug.Log("Product GUID can only be accessed in the Unity Editor.");
        #endif
    }
}
```
