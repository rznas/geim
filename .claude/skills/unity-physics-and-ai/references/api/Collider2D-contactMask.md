<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Collider2D-contactMask.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Calculates the effective LayerMask that the Collider2D will use when determining if it can contact another Collider2D.

The returned mask is calculated using a combination of the layer collision matrix and both the Rigidbody2D and Collider2D layer overrides.; more detail is provided in the code example below:

Additional resources: Collider2D.CanContact.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void Start()
    {
         var myCollider = GetComponent<Collider2D>();
 
         Debug.Log(myCollider.contactMask);
         Debug.Log(CalculateContactMask(myCollider));
    }    LayerMask CalculateContactMask(Collider2D collider)
    {
        Rigidbody2D body = collider.attachedRigidbody;        LayerMask layerCollisionMask = Physics2D.GetLayerCollisionMask(collider.gameObject.layer);
        LayerMask includeMask = collider.includeLayers | (body ? body.includeLayers : new LayerMask());
        LayerMask excludeMask = collider.excludeLayers | (body ? body.excludeLayers : new LayerMask());        return (layerCollisionMask | includeMask) & ~excludeMask;
    }
}
```
