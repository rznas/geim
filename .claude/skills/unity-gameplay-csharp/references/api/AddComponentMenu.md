<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AddComponentMenu.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The AddComponentMenu attribute allows you to place a script anywhere in the "Component" menu, instead of just the "Component->Scripts" menu.

You can use this to organize the Component menu better and improve the workflow of adding scripts.

```csharp
using UnityEngine;[AddComponentMenu("Transform/Follow Transform")]
public class FollowTransform : MonoBehaviour
{
}
```

### Properties

| Property | Description |
| --- | --- |
| componentOrder | The order of the component in the component menu (lower values appear higher in the menu). |

### Constructors

| Constructor | Description |
| --- | --- |
| AddComponentMenu | Add an item in the Component menu. |
