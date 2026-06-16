<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rigidbody2D.MoveRotation.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| angle | The new rotation angle for the Rigidbody object. |

### Description

Rotates the Rigidbody to `angle` (given in degrees).

Rotates the Rigidbody to the specified `angle` by calculating the appropriate angular velocity required to rotate the Rigidbody to that angle during the next physics update. During the move, angularDamping won't affect the body. This causes the object to rapidly move from the existing angle to the specified `angle`.

Because this feature allows a Rigidbody to be rotated rapidly to the specified `angle`, any colliders attached to the Rigidbody will react as expected i.e. they will produce collisions and/or triggers. This also means that if the colliders produce a collision then it will affect the Rigidbody movement and potentially stop it from reaching the specified `angle` during the next physics update. If the Rigidbody is kinematic then any collisions won't affect the Rigidbody itself and will only affect any other dynamic colliders.

Rigidbody2D components have a fixed limit on how fast they can rotate therefore attempting to rotate large angles over short time-scales can result in the Rigidbody not reaching the specified `angle` during the next physics update. It is recommended that you use this for relatively small rotational movements only.

It is important to understand that the actual rotation change will only occur during the next physics update therefore calling this method repeatedly without waiting for the next physics update will result in the last call being used. For this reason, it is recommended that it is called during the FixedUpdate callback.

```csharp
// MoveRotation
// The sprite is set a rotation speed.using UnityEngine;
using System.Collections;public class Example : MonoBehaviour
{
    public Texture2D tex;    private Rigidbody2D rb2D;
    private Sprite mySprite;
    private SpriteRenderer sr;
    private float revSpeed = 50.0f;    void Awake()
    {
        sr = gameObject.AddComponent<SpriteRenderer>();
        rb2D = gameObject.AddComponent<Rigidbody2D>();
    }    void Start()
    {
        mySprite = Sprite.Create(tex, new Rect(0.0f, 0.0f, tex.width, tex.height), new Vector2(0.5f, 0.5f), 100.0f);
        transform.localScale = new Vector3(3.0f, 3.0f, 3.0f);
        rb2D.gravityScale = 0.0f;
        sr.sprite = mySprite;
    }    void FixedUpdate()
    {
        rb2D.MoveRotation(rb2D.rotation + revSpeed * Time.fixedDeltaTime);
    }
}
```

### Parameters

| Parameter | Description |
| --- | --- |
| rotation | Full 3D rotation used to extract only the z-axis rotation. |

### Description

An overload of MoveRotation that allows a full 3D rotation as an argument.

The z-axis rotation is extracted from the given Quaternion `rotation` and used as a target angle to move the Rigidbody2D to. It is important to understand that the full 3D rotation isn't used because the Rigidbody2D only has a single degree of rotational freedom around the z-axis.
