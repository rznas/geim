<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Mathf.Repeat.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Loops the value t, so that it is never larger than length and never smaller than 0.

This is similar to the modulo operator but it works with floating point numbers. For example, using 3.0 for `t` and 2.5 for `length`, the result would be 0.5. With `t` = 5 and `length` = 2.5, the result would be 0.0. Note, however, that the behaviour is not defined for negative numbers as it is for the modulo operator.

In the example below, the value of time is restricted between 0.0 and just under 3.0. When the value of time is 3, the x position will go back to 0, and go back to 3 as time increases, in a continuous loop.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void Update()
    {
        // Set the x position to loop between 0 and 3
        transform.position = new Vector3(Mathf.Repeat(Time.time, 3), transform.position.y, transform.position.z);
    }
}
```

The example below shows different possible outputs.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void Start()
    {
        // prints 4
        Debug.Log(Mathf.Repeat(-1f, 5f));        // prints 0
        Debug.Log(Mathf.Repeat(0f, 5f));        // prints 1
        Debug.Log(Mathf.Repeat(1f, 5f));        // prints 0
        Debug.Log(Mathf.Repeat(5f, 5f));        // prints 2
        Debug.Log(Mathf.Repeat(12f, 5f));        // prints 1
        Debug.Log(Mathf.Repeat(16f, 5f));        // prints 4
        Debug.Log(Mathf.Repeat(19f, 5f));
    }
}
```
