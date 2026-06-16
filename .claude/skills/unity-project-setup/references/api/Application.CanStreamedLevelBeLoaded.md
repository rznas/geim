<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Application.CanStreamedLevelBeLoaded.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Checks if the built scene can be loaded.

Test if a scene with the provided index exists in the Player build. Returns true if the index value is greater than or equal to zero, and less than SceneManager.sceneCountInBuildSettings.

```csharp
// Check if level at index 1 can be loaded.
// If it can be loaded then load it.
using System;
using UnityEngine;public class SampleBehaviour : MonoBehaviour
{
    void Start()
    {
        if (Application.CanStreamedLevelBeLoaded(1))
        {
            Application.LoadLevel(1);
        }
    }
}
```

### Description

Checks if the built scene can be loaded.

Verify if the named scene exists in either the Player build or currently loaded AssetBundles. Additional resources: SceneManager

```csharp
// Check if "Level1" can be loaded, if it can be loaded then load it.
using System;
using UnityEngine;public class SampleBehaviour : MonoBehaviour
{
    void Start()
    {
        if (Application.CanStreamedLevelBeLoaded("Level1"))
        {
            Application.LoadLevel("Level1");
        }
    }
}
```
