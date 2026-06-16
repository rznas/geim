<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GameObject.AddComponent.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Adds a component of the specified type to the GameObject.

There is no corresponding method for removing a component from a GameObject. To remove a component, use Object.Destroy.

```csharp
using UnityEngine;
using System.Collections;public class AddComponentExample : MonoBehaviour
{
    void Start()
    {
        SphereCollider sc = gameObject.AddComponent(typeof(SphereCollider)) as SphereCollider;
    }
}
```

Additional resources: Component, Object.Destroy

### Description

Generic version of this method.

```csharp
using UnityEngine;
using System.Collections;public class AddComponentExample : MonoBehaviour
{
    void Start()
    {
        SphereCollider sc = gameObject.AddComponent<SphereCollider>();
    }
}
```

Additional resources: Component, Object.Destroy

### Description

Adds a component of the specified class name to the GameObject.

Deprecated: Use AddComponent(Type) or the generic version of this method instead.
