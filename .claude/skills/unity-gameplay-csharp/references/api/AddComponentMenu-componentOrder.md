<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AddComponentMenu-componentOrder.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The order of the component in the component menu (lower values appear higher in the menu).

**Note**: The order only affects the component item itself and doesn't influence any submenus.

Scripts are first sorted by their namespace. Scripts without a namespace are positioned after those with a namespace.

By default, menu items are assigned a position value of 20. The final placement of the item is determined by adding the `componentOrder` value to this default position. The order can be either positive or negative value.

If your item has a priority of 11 or higher than the previous item, a separator is automatically added before your item in the menu.

The following example uses a `componentOrder` of `-1` to bring **MyScript2** above **MyScript1**:

```csharp
using UnityEngine;
[AddComponentMenu("My Scripts/My Script 1")]
public class MyScript1 : MonoBehaviour
{
}[AddComponentMenu("My Scripts/My Script 2", -1)]
public class MyScript2 : MonoBehaviour
{
}
```
