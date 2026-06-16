<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/MonoBehaviour.OnTriggerEnter2D.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| other | The other Collider2D involved in this collision. |

### Description

Sent when another object enters a trigger collider attached to this object (2D physics only).

Further information about the other collider is reported in the Collider2D parameter passed during the call.

This message is sent to the trigger Collider2D and the Rigidbody2D (if any) that the trigger Collider2D belongs to, and to the Rigidbody2D (or the Collider2D if there is no Rigidbody2D) that touches the trigger.

**Note:** Trigger events are only sent if one of the Colliders also has a Rigidbody2D attached. Trigger events are sent to disabled MonoBehaviours, to allow enabling Behaviours in response to collisions.

Additional resources: Collider2D class, OnTriggerExit2D, OnTriggerStay2D.

The following two script examples create an OnTriggerEnter2D demo. Example1 generates a Unity logo sprite, `GameObject1`. This sprite is collided with by the Example2 sprite, `GameObject2`. The Example1 script creates the Rigidbody2D. The kinematic mode is used on this script. Example2 supports the OnCollisionEnter2D method. This is called when GameObject2 collides with `GameObject1`. The script code for `GameObject2` controls the time it takes to collide with `GameObject1`. `GameObject2` is animated left-to-right repeatedly. When on the left side of the screen `GameObject2` moves right towards `GameObject1`. When these have collided `GameObject2` returns back to the left. The left side of the screen is the starting point for `GameObject2`. The right side of the screen is the constant position of `GameObject1`. The Example2 script code makes `GameObject2` collide with `GameObject1`. `GameObject2` stays collided for a short length of time.

```csharp
using System.Collections;
using System.Collections.Generic;
using UnityEngine;public class Example1 : MonoBehaviour
{
    private BoxCollider2D bc;
    private Rigidbody2D rb;    void Awake()
    {
        SpriteRenderer sprRend = gameObject.AddComponent<SpriteRenderer>() as SpriteRenderer;
        sprRend.color = new Color(0.9f, 0.9f, 0.9f, 1.0f);        bc = gameObject.AddComponent<BoxCollider2D>() as BoxCollider2D;
        bc.size = new Vector2(1.3f, 1.3f);
        bc.isTrigger = true;        rb = gameObject.AddComponent<Rigidbody2D>() as Rigidbody2D;
        rb.bodyType = RigidbodyType2D.Kinematic;
    }    void Start()
    {
        gameObject.GetComponent<SpriteRenderer>().sprite = Resources.Load<Sprite>("logo");
        gameObject.transform.Translate(4.0f, 0.0f, 0.0f);
        gameObject.transform.localScale = new Vector2(2.0f, 2.0f);
    }
}
```

Example2. This is the sprite that moves forwards and backwards and triggers with Example1.

```csharp
using System.Collections;
using System.Collections.Generic;
using UnityEngine;public class Example2 : MonoBehaviour
{
    private float spriteMove;    void Awake()
    {
        SpriteRenderer sprRend;
        sprRend = gameObject.AddComponent<SpriteRenderer>() as SpriteRenderer;
        sprRend.color = new Color(0.9f, 0.9f, 0.9f, 1.0f);        BoxCollider2D bc;
        bc = gameObject.AddComponent<BoxCollider2D>() as BoxCollider2D;
        bc.size = new Vector2(1.3f, 1.3f);
        bc.isTrigger = true;
    }    void Start()
    {
        gameObject.GetComponent<SpriteRenderer>().sprite = Resources.Load<Sprite>("circle");
        gameObject.transform.Translate(-4.0f, 0.0f, 0.0f);
        spriteMove = 0.1f;
    }    void FixedUpdate()
    {
        gameObject.transform.Translate(spriteMove, 0.0f, 0.0f);        if (gameObject.transform.position.x < -4.0f)
        {
            // move GameObject2 to the right
            spriteMove = 0.1f;
        }
    }    // when the GameObjects collider arrange for this GameObject to travel to the left of the screen
    void OnTriggerEnter2D(Collider2D col)
    {
        Debug.Log(col.gameObject.name + " : " + gameObject.name + " : " + Time.time);
        spriteMove = -0.1f;
    }
}
```
