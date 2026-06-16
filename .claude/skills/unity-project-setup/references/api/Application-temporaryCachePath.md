<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Application-temporaryCachePath.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Contains the path to a temporary data / cache directory (Read Only).

This path is unique per Unity project, but it isn't unique for multiple concurrent instances of the same project.

 To obtain unique temporary paths, use FileUtil.GetUniqueTempPathInProject.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void Start()
    {
        // print the path to the temporary data folder
        print(Application.temporaryCachePath);
    }
}
```
