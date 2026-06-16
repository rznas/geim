<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SphereCollider-radius.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The radius of the sphere measured in the object's local space.

The sphere radius will be scaled by the transform's scale.

```csharp
using UnityEngine;//Always attach a SphereCollider component to your GameObject
public class Example : MonoBehaviour
{
    //This declares your SphereCollider
    SphereCollider myCollider;    void Start()
    {
        //Assigns the attached SphereCollider to myCollider
        myCollider = GetComponent<SphereCollider>();
    }    void OnTriggerEnter(Collider other)
    {
        //This increases the Collider radius when the GameObject collides with a trigger Collider
        myCollider.radius += 2f;
    }
}
```
