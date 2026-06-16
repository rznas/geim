<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Object-operator_Object.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Does the object exist?

The three examples below give the same result.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    // check if there is a rigidbody attached to this transform
    void Start()
    {
        if (GetComponent<Rigidbody>() == true)
        {
            Debug.Log("Rigidbody attached to this transform");
        }
    }
}
```

...is the same as this...

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    // check if there is a rigidbody attached to this transform
    void Start()
    {
        if (GetComponent<Rigidbody>())
        {
            Debug.Log("Rigidbody attached to this transform");
        }
    }
}
```

...which is also the same as this...

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    // check if there is a rigidbody attached to this transform
    void Start()
    {
        if (GetComponent<Rigidbody>() != null)
        {
            Debug.Log("Rigidbody attached to this transform");
        }
    }
}
```
