<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Vector3-sqrMagnitude.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Returns the squared length of this vector (Read Only).

The magnitude of a vector `v` is calculated as Mathf.Sqrt(Vector3.Dot(v, v)). However, the Sqrt calculation is quite complicated and takes longer to execute than the normal arithmetic operations. Calculating the squared magnitude instead of using the magnitude property is much faster - the calculation is basically the same only without the slow Sqrt call. If you are using magnitudes simply to compare distances, then you can just as well compare squared magnitudes against the squares of distances since the comparison will give the same result.

Additional resources: magnitude.

```csharp
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    // detects when the other transform is closer than closeDistance
    // this is faster than using Vector3.magnitude
    public Transform other;
    public float closeDistance = 5.0f;    void Update()
    {
        if (other)
        {
            Vector3 offset = other.position - transform.position;
            float sqrLen = offset.sqrMagnitude;            // square the distance we compare with
            if (sqrLen < closeDistance * closeDistance)
            {
                print("The other transform is close to me!");
            }
        }
    }
}
```
