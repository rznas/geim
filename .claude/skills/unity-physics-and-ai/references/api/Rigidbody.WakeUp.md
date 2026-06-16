<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rigidbody.WakeUp.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Forces a rigidbody to wake up.

For more information about Rigidbody sleeping, refer to the Rigidbody overview.

```csharp
using UnityEngine;public class ExampleScript : MonoBehaviour
{
    private float fallTime;
    private Rigidbody rbGO;
    private bool sleeping;    void Start()
    {
        rbGO = gameObject.AddComponent<Rigidbody>();
        rbGO.mass = 10.0f;
        Physics.gravity = new Vector3(0, -2.0f, 0);
        sleeping = false;
        fallTime = 0.0f;
    }    void Update()
    {
        if (fallTime > 1.0f)
        {
            if (sleeping)
            {
                rbGO.WakeUp();
                Debug.Log("wakeup");
            }
            else
            {
                rbGO.Sleep();
                Debug.Log("sleep");
            }            sleeping = !sleeping;            fallTime = 0.0f;
        }        fallTime += Time.deltaTime;
    }
}
```
