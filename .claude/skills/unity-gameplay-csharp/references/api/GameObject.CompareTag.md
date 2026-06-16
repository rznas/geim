<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GameObject.CompareTag.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| tag | The tag to check for on the GameObject. |

### Returns

**bool** `true` if the GameObject has the given tag, `false` otherwise.

### Description

Checks if the specified tag is attached to the GameObject.

The example below calls `CompareTag` on a Collider to check if it has the `Player` tag.

```csharp
// Immediate death trigger.
// Destroys any colliders that enter the trigger, if they are tagged "Player".
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.CompareTag("Player"))
        {
            Destroy(other.gameObject);
        }
    }
}
```

Additional resources: GameObject.FindWithTag

### Parameters

| Parameter | Description |
| --- | --- |
| tag | A TagHandle representing the tag to check for on the GameObject. |

### Returns

**bool** `true` if the GameObject has the given tag, `false` otherwise.

### Description

Checks if the specified tag is attached to the GameObject.

This overload of the method, which takes a TagHandle, can be faster than the overload which takes a string, particularly if the same `TagHandle` can be reused for many calls.

The example below calls `CompareTag` with a `TagHandle` on a Collider to check if it has the `Player` tag:

```csharp
// Immediate death trigger.
// Destroys any colliders that enter the trigger, if they are tagged "Player".
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    private TagHandle _playerTag;
    public void OnEnable()
    {
        _playerTag = TagHandle.GetExistingTag("Player");
    }    void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.CompareTag(_playerTag))
        {
            Destroy(other.gameObject);
        }
    }
}
```

Additional resources: TagHandle
