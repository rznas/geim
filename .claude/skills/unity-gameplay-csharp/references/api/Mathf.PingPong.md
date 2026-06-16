<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Mathf.PingPong.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

PingPong returns a value that increments and decrements between zero and the length. It follows the triangle wave formula where the bottom is set to zero and the peak is set to `length`.

PingPong requires the value `t` to be a self-incrementing value. For example, Time.time and Time.unscaledTime.

The example below shows a simple use case with the light intensity going from 0 to 8 to 0 continuously.

```csharp
using UnityEngine;public class PingPongExample : MonoBehaviour
{
    Light myLight;    void Start()
    {
        myLight = GetComponent<Light>();
    }    void Update()
    {
        myLight.intensity = Mathf.PingPong(Time.time, 8);
    }
}
```

The example below shows some outputs as example.

```csharp
using UnityEngine;public class OutputExample : MonoBehaviour
{
    void Start()
    {
        // Prints 2
        Debug.Log(Mathf.PingPong(2, 5));        // Prints 3
        Debug.Log(Mathf.PingPong(7, 5));
 
        // Prints 1
        Debug.Log(Mathf.PingPong(11, 5));
    }
}
```
