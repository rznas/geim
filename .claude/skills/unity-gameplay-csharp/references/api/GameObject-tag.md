<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GameObject-tag.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The tag assigned to the GameObject.

A tag can be used to identify a GameObject. Tags must be declared in the Tags and Layers manager before using them.

**Note:** Do not set a tag from Awake() or OnValidate(). The order in which `Awake` is called is not deterministic between components and a tag can be overwritten when its `Awake` is called. If you do this, Unity generates the warning `SendMessage cannot be called during Awake, CheckConsistency, or OnValidate`.

The example below sets the current GameObject's tag to "Player" and then implements MonoBehaviour.OnTriggerEnter to check if the Collider on the other object involved in a collision with this object is tagged "Enemy".

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void Start()
    {
        //Set the tag of this GameObject to Player
        gameObject.tag = "Player";
    }    private void OnTriggerEnter(Collider other)
    {
        //Check if the collider of the other GameObject involved in the collision is tagged "Enemy"
        if (other.tag == "Enemy")
        {
            Debug.Log("Triggered by Enemy");
        }
    }
}
```

Additional resources: GameObject.CompareTag, MonoBehaviour
