<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Bounds-extents.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The extents of the Bounding Box. This is always half of the size of the Bounds.

**Note:** If Bounds.extents has a negative value for any axis, Bounds.Contains always returns False.

```csharp
//Attach this script to a visible GameObject.
//Click on the GameObject to expand it and output the Bound extents to the Console.using UnityEngine;public class Example : MonoBehaviour
{
    Collider m_ObjectCollider;
    public Vector3 m_MyScale;    void Start()
    {
        //Fetch the GameObject's collider (make sure they have a Collider component)
        m_ObjectCollider = gameObject.GetComponent<Collider>();
        //Output the GameObject's Collider Bound extents
        Debug.Log("extents : " + m_ObjectCollider.bounds.extents);
    }    //Detect when the user clicks the GameObject
    void OnMouseDown()
    {
        //Change the scale of the GameObject to the size you define in the Inspector
        transform.localScale = m_MyScale;
        //Output the extents of the Bounds after clicking the GameObject. Extents change to half of the scale.
        Debug.Log("extents : " + m_ObjectCollider.bounds.extents);
    }
}
```
