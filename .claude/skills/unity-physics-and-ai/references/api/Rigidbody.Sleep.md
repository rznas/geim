<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rigidbody.Sleep.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Forces a rigidbody to sleep until woken up.

A Rigidbody can be put to sleep only if it is not in contact with an awake rigidbody, and if it does not come in contact with any rigidbody during the next simulation step. A common use is to call this from Awake in order to make a rigidbody sleep at startup. See the Rigidbodies Overview in the manual for more information about Rigidbody sleeping.

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
