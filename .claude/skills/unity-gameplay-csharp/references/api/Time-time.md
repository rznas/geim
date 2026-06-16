<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Time-time.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The time at the beginning of the current frame in seconds since the start of the application (Read Only).

This is the time in seconds since the start of the application, which Time.timeScale scales and Time.maximumDeltaTime adjusts. When called from inside MonoBehaviour.FixedUpdate, it returns Time.fixedTime.

This value is undefined during Awake messages and starts after all of these messages are finished. This value does not update if the Editor is paused. See Time.realtimeSinceStartup for a time value that is unaffected by pausing.

See Time and Frame Rate Management in the User Manual for more information about how this property relates to the other Time properties.

```csharp
//If the Fire1 button is pressed, a projectile
//will be Instantiated every 0.5 seconds.using UnityEngine;
using System.Collections;public class Example : MonoBehaviour
{
    public GameObject projectile;
    public float fireRate = 0.5f;
    private float nextFire = 0.0f;    void Update()
    {
        if (Input.GetButton("Fire1") && Time.time > nextFire)
        {
            nextFire = Time.time + fireRate;
            Instantiate(projectile, transform.position, transform.rotation);
        }
    }
}
```
