<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Mathf.Clamp01.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Clamps value between 0 and 1 and returns value.

If the value is negative then zero is returned. If value is greater than one then one is returned.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    // Set the position of the transform to be that of the time
    // but never less than 0 or more than 1    void Update()
    {
        transform.position = new Vector3(Mathf.Clamp01(Time.time), 0, 0);
    }
}
```

```csharp
using System.Collections;
using System.Collections.Generic;
using UnityEngine;// Print a random number every second.  This number is chosen over a
// range from startValue to endValue.  The random number is clamped
// to between zero and one by Clamp01().public class ExampleScript : MonoBehaviour
{
    public float startValue = -0.5f;
    public float endValue = 1.5f;    private float timeCount = 0.0f;    void FixedUpdate()
    {
        timeCount += Time.deltaTime;        if (timeCount > 1.0f)
        {
            float result = Random.value;
            result = result * (endValue - startValue);
            result = result + startValue;            float clampValue = Mathf.Clamp01(result);            Debug.Log("value: " + result.ToString("F3") + " result: " + clampValue.ToString("F3"));            timeCount = 0.0f;
        }
    }
}
```
