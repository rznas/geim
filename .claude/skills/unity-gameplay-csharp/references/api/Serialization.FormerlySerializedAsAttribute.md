<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Serialization.FormerlySerializedAsAttribute.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Use this attribute to rename a field without losing its serialized value.

This is an Editor-only attribute and can't be used at runtime. For example, if you have a class like this:

```csharp
using UnityEngine;public class MyMonster : MonoBehaviour
{
    public int hitpoints;
}
```

And you would now like to rename this field. You can achieve that by using this attribute:

```csharp
using UnityEngine;
using UnityEngine.Serialization;public class MyMonster : MonoBehaviour
{
    [FormerlySerializedAs("hitpoints")]
    public int health;
}
```

Unity serializes public variables by default. To serialize private variables, use the SerializeField attribute. For more information, see the Script Serialization documentation.

### Properties

| Property | Description |
| --- | --- |
| oldName | The name of the field before the rename. |

### Constructors

| Constructor | Description |
| --- | --- |
| FormerlySerializedAsAttribute |  |
