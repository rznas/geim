<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Physics.CheckSphere.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| position | Center of the sphere. |
| radius | Radius of the sphere. |
| layerMask | A Layer mask that is used to selectively filter which colliders are considered when casting a sphere. |
| queryTriggerInteraction | Specifies whether this query should hit Triggers. |

### Description

Returns true if there are any colliders overlapping the sphere defined by `position` and `radius` in world coordinates.

```csharp
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    public float sphereRadius;
    AudioSource audioSource;    void Start()
    {
        audioSource = GetComponent<AudioSource>();
    }    void WarningNoise()
    {
        // Play a noise if an object is within the sphere's radius.
        if (Physics.CheckSphere(transform.position, sphereRadius))
        {
            audioSource.Play();
        }
    }
}
```
