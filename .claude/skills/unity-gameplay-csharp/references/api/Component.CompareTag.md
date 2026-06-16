<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Component.CompareTag.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| tag | The tag to compare. |

### Returns

**bool** Returns true if GameObject has same tag. Returns false otherwise.

### Description

Checks the GameObject's tag against the defined `tag`.

```csharp
// Immediate death trigger.
// Destroys any colliders that enter the trigger, if they are tagged player.using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Player"))
        {
            Destroy(other.gameObject);
        }
    }
}
```

### Parameters

| Parameter | Description |
| --- | --- |
| tag | A TagHandle representing the tag to compare. |

### Returns

**bool** Returns true if GameObject has same tag. Returns false otherwise.

### Description

Checks the GameObject's tag against the defined `tag`.

This overload of the method, which takes a TagHandle, can be faster than the overload which takes a string, particularly if the same TagHandle can be reused for many calls.

```csharp
// Immediate death trigger.
// Destroys any colliders that enter the trigger, if they are tagged "Player".using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    private TagHandle _playerTag;
    public void OnEnable()
    {
        _playerTag = TagHandle.GetExistingTag("Player");
    }    void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag(_playerTag))
        {
            Destroy(other.gameObject);
        }
    }
}
```
