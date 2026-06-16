<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Collision2D-rigidbody.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The incoming Rigidbody2D involved in the collision with the otherRigidbody.

This may be null if the Collision2D.collider is not attached to a Rigidbody2D.

Additional resources: Collider2D and Rigidbody2D.

```csharp
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    void OnCollisionEnter2D(Collision2D collision2D)
    {
        //If the object we collided with was a Runner and not a Catcher.
        if (collision2D.transform.name == "Runner")
        {
            StartCoroutine(StuckInTheMud(collision2D));
        }
    }    //Freeze the object in position for 5 seconds
    public IEnumerator StuckInTheMud(Collision2D victim)
    {
        victim.rigidbody.bodyType = RigidbodyType2D.Kinematic;
        yield return new WaitForSeconds(5f);
        victim.rigidbody.bodyType = RigidbodyType2D.Dynamic;
    }
}
```
