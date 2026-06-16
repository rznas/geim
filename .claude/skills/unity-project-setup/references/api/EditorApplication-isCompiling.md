<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorApplication-isCompiling.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Is editor currently compiling scripts? (Read Only)

*Editor Window that tells you if Unity is compiling scripts.*

```csharp
// Small example that shows when scripts are being compiled.using UnityEditor;
using UnityEngine;public class isCompilingExample : EditorWindow
{
    [MenuItem("Examples/Is compiling?")]
    static void Init()
    {
        EditorWindow window = GetWindowWithRect(typeof(isCompilingExample), new Rect(0, 0, 200, 200));
        window.Show();
    }    void OnGUI()
    {
        EditorGUILayout.LabelField("Compiling:", EditorApplication.isCompiling ? "Yes" : "No");        this.Repaint();
    }
}
```
