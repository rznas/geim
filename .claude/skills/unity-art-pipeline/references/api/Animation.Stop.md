<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Animation.Stop.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Stops all playing animations that were started with this Animation.

Stopping an animation also Rewinds it to the Start.

```csharp
using UnityEngine;public class ExampleScript : MonoBehaviour
{
    Animation anim;    void Start()
    {
        anim = GetComponent<Animation>();
    }    void Update()
    {
        if (Input.GetButtonDown("Jump") && anim.isPlaying)
        {
            anim.Stop();
        }
    }
}
```

### Description

Stops an animation named `name`.

Stopping an animation also Rewinds it to the Start.

```csharp
using UnityEngine;public class ExampleScript : MonoBehaviour
{
    Animation anim;    void Start()
    {
        anim = GetComponent<Animation>();
    }    void Update()
    {
        if (Input.GetButtonDown("Jump") && anim.isPlaying)
        {
            anim.Stop("CubeJump");
        }
    }
}
```
