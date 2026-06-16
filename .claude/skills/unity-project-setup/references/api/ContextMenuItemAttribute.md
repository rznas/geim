<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ContextMenuItemAttribute.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Use this attribute to add a context menu to a field that calls a named method.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    [ContextMenuItem("Reset", "ResetBiography")]
    [Multiline(8)]
    [SerializeField] 
    string playerBiography = "";    void ResetBiography()
    {
        playerBiography = "";
    }
}
```

### Properties

| Property | Description |
| --- | --- |
| function | The name of the function that should be called. |
| name | The name of the context menu item. |

### Constructors

| Constructor | Description |
| --- | --- |
| ContextMenuItemAttribute | Use this attribute to add a context menu to a field that calls a named method. |

### Inherited Members

### Properties

| Property | Description |
| --- | --- |
| applyToCollection | Makes attribute affect collections instead of their items. |
| order | Optional field to specify the order that multiple DecorationDrawers should be drawn in. |
