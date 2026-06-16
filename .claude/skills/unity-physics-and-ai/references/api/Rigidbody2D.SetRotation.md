<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rigidbody2D.SetRotation.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| angle | The rotation of the Rigidbody (in degrees). |

### Description

Sets the rotation of the Rigidbody2D to `angle` (given in degrees).

Additional resources: Rigidbody2D.rotation and Rigidbody2D.MoveRotation.

```csharp
using UnityEngine;// Rotate rigidBody2D every frame.
public class ExampleScript : MonoBehaviour
{
    public Rigidbody2D rigidBody2D;
    public float rotation = 0.0f;    void Start()
    {
        rigidBody2D = GetComponent<Rigidbody2D>();
    }    void Update()
    {
        rigidBody2D.SetRotation(rotation);        rotation += 1.0f;
    }
}
```

### Parameters

| Parameter | Description |
| --- | --- |
| rotation | Full 3D rotation used to extract only the z-axis rotation. |

### Description

Sets the rotation of the Rigidbody2D to the z-axis rotation extracted from the full 3D `rotation`.

The z-axis rotation is extracted from the given Quaternion `rotation` and used as the rotation for Rigidbody2D. It is important to understand that the full 3D rotation isn't used because the Rigidbody2D only has a single degree of rotational freedom around the z-axis.

```csharp
using UnityEngine;// Rotate rigidBody2D every frame.
public class ExampleScript : MonoBehaviour
{
    public Rigidbody2D rigidBody2D;
    public float rotation = 0.0f;    void Start()
    {
        rigidBody2D = GetComponent<Rigidbody2D>();
    }    void Update()
    {
        var quaternionRotation = Quaternion.Euler(0f, 0f, rotation);
        rigidBody2D.SetRotation(rotation);        rotation += 1.0f;
    }
}
```
