<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Light-spotAngle.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The angle of the spot light's cone in degrees.

This is used primarily for LightType.Spot lights and has no effect for LightType.Point lights Additional resources: Light component.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    // Change spot angle randomly between 'minAngle' and 'maxAngle'
    // each 'interval' seconds.    float interval = 0.3f;
    float minAngle = 10;
    float maxAngle = 90;
    float timeLeft;    Light lt;
    void Start()
    {
        lt = GetComponent<Light>();
        lt.type = LightType.Spot;        timeLeft = interval;
    }    void Update()
    {
        timeLeft -= Time.deltaTime;        if (timeLeft < 0.0)
        {
            // time to change!
            timeLeft = interval;
            lt.spotAngle = Random.Range(minAngle, maxAngle);
        }
    }
}
```
