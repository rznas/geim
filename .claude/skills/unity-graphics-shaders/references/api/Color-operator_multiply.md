<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Color-operator_multiply.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Multiplies two colors together. Each component is multiplied separately.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void Start()
    {
        Color grayColor = Color.gray * Color.white;
    }
}
```

### Description

Multiplies color `a` by the float `b`. Each color component is scaled separately.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void Start()
    {
        Color whiteColor = Color.gray * 2;
    }
}
```

### Description

Multiplies color `a` by the float `b`. Each color component is scaled separately.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void Start()
    {
        Color whiteColor = 2 * Color.gray;
    }
}
```
