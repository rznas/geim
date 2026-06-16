<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/WWW-assetBundle.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Streams an AssetBundle that can contain any kind of asset from the project folder.

```csharp
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    IEnumerator Start()
    {
        using (WWW www = new WWW("https://myserver/myBundle.unity3d"))
        {
            yield return www;            // Get the designated main asset and instantiate it.
            Instantiate(www.assetBundle.mainAsset);
        }
    }
}
```

Additional resources: AssetBundle class.
