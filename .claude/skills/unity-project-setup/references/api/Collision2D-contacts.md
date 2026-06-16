<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Collision2D-contacts.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The specific points of contact with the incoming Collider2D. You should avoid using this as it produces memory garbage. Use GetContact or GetContacts instead.

Additional resources: Collider2D class.

```csharp
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    public GameObject explosion;    void OnCollisionEnter2D(Collision2D coll)
    {
        // If a missile hits this object
        if (coll.transform.tag == "Missile")
        {
            Debug.Log("HIT!");            // Spawn an explosion at each point of contact
            foreach (ContactPoint2D missileHit in coll.contacts)
            {
                Vector2 hitPoint = missileHit.point;
                Instantiate(explosion, new Vector3(hitPoint.x, hitPoint.y, 0), Quaternion.identity);
            }
        }
    }
}
```
