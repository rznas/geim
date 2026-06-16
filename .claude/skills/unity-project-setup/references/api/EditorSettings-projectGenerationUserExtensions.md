<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorSettings-projectGenerationUserExtensions.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Controls list of extensions of files that will be included in the c# .csproj projects that Unity generates.

Use this if you have certain file formats that you'd like to add to the .csproj files for convenient editing. This setting takes a semicolon-separated string of extensions. Leading dots are optional. This setting is specific to a project.

```csharp
using UnityEngine;
using UnityEditor;public class Example
{
    [MenuItem("TryMe/SetExtensions")]
    static void Doit()
    {
        EditorSettings.projectGenerationUserExtensions = new[] { "txt", "xml", ".cs", "myfunkyformat"};
    }
}
```
