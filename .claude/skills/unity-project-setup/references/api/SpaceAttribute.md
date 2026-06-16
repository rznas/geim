<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SpaceAttribute.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Use this PropertyAttribute to add some spacing in the Inspector.

The spacing is done using a DecoratorDrawer.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    int health = 0;
    int maxHealth = 100;    [Space(10)] // 10 pixels of spacing here.    int shield = 0;
    int maxShield = 0;
}
```

### Properties

| Property | Description |
| --- | --- |
| height | The spacing in pixels. |

### Constructors

| Constructor | Description |
| --- | --- |
| SpaceAttribute | Use this DecoratorDrawer to add some spacing in the Inspector. |

### Inherited Members

### Properties

| Property | Description |
| --- | --- |
| applyToCollection | Makes attribute affect collections instead of their items. |
| order | Optional field to specify the order that multiple DecorationDrawers should be drawn in. |
