<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/HeaderAttribute.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Use this PropertyAttribute to add a header above some fields in the Inspector.

The header is done using a DecoratorDrawer.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    [Header("Health Parameters")]
    public int health = 0;
    public int maxHealth = 100;    [Header("Shield Parameters")]
    public int shield = 0;
    public int maxShield = 0;
}
```

### Properties

| Property | Description |
| --- | --- |
| header | The header text. |

### Constructors

| Constructor | Description |
| --- | --- |
| HeaderAttribute | Add a header above some fields in the Inspector. |

### Inherited Members

### Properties

| Property | Description |
| --- | --- |
| applyToCollection | Makes attribute affect collections instead of their items. |
| order | Optional field to specify the order that multiple DecorationDrawers should be drawn in. |
