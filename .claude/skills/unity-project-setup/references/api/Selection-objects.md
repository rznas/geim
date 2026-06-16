<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Selection-objects.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The actual unfiltered selection from the Scene.

All objects will be returned, including assets in projects. You can also assign objects to the selection.

Additional resources: Selection.instanceIDs.


 *Scriptable Wizard that lets you select GameObjects by their tag.*

```csharp
using UnityEngine;
using UnityEditor;class SelectAllOfTag : ScriptableWizard
{
    public string tagName = "ExampleTag";    [MenuItem("Example/Select All of Tag...")]
    static void SelectAllOfTagWizard()
    {
        ScriptableWizard.DisplayWizard(
            "Select All of Tag...",
            typeof(SelectAllOfTag),
            "Make Selection");
    }    void OnWizardCreate()
    {
        GameObject[] gos = GameObject.FindGameObjectsWithTag(tagName);
        Selection.objects = gos;
    }
}
```
