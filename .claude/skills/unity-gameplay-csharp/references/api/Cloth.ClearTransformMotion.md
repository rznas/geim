<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Cloth.ClearTransformMotion.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Clear the pending transform changes from affecting the cloth simulation.

When the transform of a cloth changes, the cloth will not directly follow that change, but instead, the new positions of the SkinnedMeshRenderer's vertices will affect the cloth through the configured constraints in the next cloth simulation update, so that moving the tranform will result in realistic motion of the cloth.

You can call ClearTransformMotion on the cloth to change this behavior. Calling ClearTransformMotion will move the cloth simulation particles along with the transform, so that the transform movement has no effect on the cloth simulation. This is useful if you want to teleport Characters from one point in the Scene to another, without having the cloth suddenly jerk into place.

```csharp
using UnityEngine;public class ExampleClass : MonoBehaviour
{
    Vector3 newPosition;    void Start()
    {
        transform.position = newPosition;
        GetComponent<Cloth>().ClearTransformMotion();
    }
}
```
