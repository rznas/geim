<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Color-ctor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| r | Red component. |
| g | Green component. |
| b | Blue component. |
| a | Alpha component. |

### Description

Constructs a new Color with given r,g,b,a components.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void Start()
    {
        Color newColor = new Color(0.3f, 0.4f, 0.6f, 0.3f);
    }
}
```

### Parameters

| Parameter | Description |
| --- | --- |
| r | Red component. |
| g | Green component. |
| b | Blue component. |

### Description

Constructs a new Color with given r,g,b components and sets `a` to 1.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void Start()
    {
        Color newColor = new Color(0.3f, 0.4f, 0.6f);
    }
}
```

Note: If the Color Constructor is called and no r,g,b,a components are given, all r,g,b,a components default to a value of 0.
