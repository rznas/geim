<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rigidbody2D.MovePosition.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| position | The new position for the Rigidbody object. |

### Description

Moves the rigidbody to `position`.

Moves the rigidbody to the specified `position` by calculating the appropriate linear velocity required to move the rigidbody to that position during the next physics update. During the move, neither gravity or linearDamping will affect the body. This causes the object to rapidly move from the existing position, through the world, to the specified `position`.

Because this feature allows a rigidbody to be moved rapidly to the specified `position` through the world, any colliders attached to the rigidbody will react as expected i.e. they will produce collisions and/or triggers. This also means that if the colliders produce a collision then it will affect the rigidbody movement and potentially stop it from reaching the specified `position` during the next physics update. If the rigidbody is kinematic then any collisions won't affect the rigidbody itself and will only affect any other dynamic colliders.

2D rigidbodies have a fixed limit on how fast they can move therefore attempting to move large distances over short time-scales can result in the rigidbody not reaching the specified `position` during the next physics update. It is recommended that you use this for relatively small distance movements only.

It is important to understand that the actual position change will only occur during the next physics update therefore calling this method repeatedly without waiting for the next physics update will result in the last call being used. For this reason, it is recommended that it is called during the FixedUpdate callback.

**Note:** MovePosition is intended for use with kinematic rigidbodies.

```csharp
// Move sprite bottom left to upper right.  It does not stop moving.
// The Rigidbody2D gives the position for the cube.using UnityEngine;
using System.Collections;public class Example : MonoBehaviour
{
    public Texture2D tex;    private Vector2 velocity;
    private Rigidbody2D rb2D;
    private Sprite mySprite;
    private SpriteRenderer sr;    void Awake()
    {
        sr = gameObject.AddComponent<SpriteRenderer>();
        rb2D = gameObject.AddComponent<Rigidbody2D>();
    }    void Start()
    {
        mySprite = Sprite.Create(tex, new Rect(0.0f, 0.0f, tex.width, tex.height), new Vector2(0.5f, 0.5f), 100.0f);
        velocity = new Vector2(1.75f, 1.1f);
        sr.color = new Color(0.9f, 0.9f, 0.0f, 1.0f);        transform.position = new Vector3(-2.0f, -2.0f, 0.0f);
        sr.sprite = mySprite;
    }    void FixedUpdate()
    {
        rb2D.MovePosition(rb2D.position + velocity * Time.fixedDeltaTime);
    }
}
```
