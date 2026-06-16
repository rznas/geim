<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Collider2D.OnTriggerEnter2D.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| other | The other Collider2D involved in this collision. |

### Description

Sent when another object enters a trigger collider attached to this object (2D physics only).

Further information about the other collider is reported in the Collider2D parameter passed during the call.

Trigger events will be sent to disabled MonoBehaviours, to allow enabling Behaviours in response to collisions.

Additional resources: The Collider2D class and the OnTriggerExit2D and OnTriggerStay2D messages.

An OnTriggerEnter2D example is shown. This example has two empty GameObjects, called `GameObject1` and `GameObject2`. These both have script files which makes the example work. The first script, `Example1`, creates a Sprite and adds a BoxCollider2D and a Rigidbody2D. This object falls under gravity and collides with `Example2`. `Example2` has no visibility. (The rectangle it creates is visible in the Scene window.) Both GameObjects report the collision.

The script below is Example1.

```csharp
using System.Collections;
using System.Collections.Generic;
using UnityEngine;// Create GameObject1 that falls under gravity.  It will pass through
// Example2 and cause a collision.  GameObject1 is moved back to
// the start position and it will again start to fall under gravity.public class Example1 : MonoBehaviour
{
    void Awake()
    {
        SpriteRenderer sr;
        sr = gameObject.AddComponent<SpriteRenderer>() as SpriteRenderer;
        sr.color = new Color(0.9f, 0.9f, 0.1f, 1.0f);        BoxCollider2D bc;
        bc = gameObject.AddComponent<BoxCollider2D>() as BoxCollider2D;
        bc.size = new Vector2(1.0f, 1.0f);        Rigidbody2D rb;
        rb = gameObject.AddComponent<Rigidbody2D>() as Rigidbody2D;
        rb.gravityScale = 1.0f;        // A square in the Resources folder is used.
        gameObject.GetComponent<SpriteRenderer>().sprite = Resources.Load<Sprite>("square");        // GameObject1 starts 3 units in the Up direction.
        gameObject.transform.position = new Vector3(0.0f, 3.0f, 0.0f);
        gameObject.transform.localScale = new Vector3(0.5f, 0.5f, 1.0f);
    }    private float timer = 0.0f;
    private bool restart = false;    void FixedUpdate()
    {
        if (restart == true)
        {
            timer = timer + Time.deltaTime;
            if (timer > 0.25f)
            {
                gameObject.transform.position = new Vector3(0.0f, 3.0f, 0.0f);
                gameObject.GetComponent<Rigidbody2D>().linearVelocity = new Vector2(0.0f, 0.0f);
                restart = false;
            }
        }
    }    // called when this GameObject collides with GameObject2.
    void OnTriggerEnter2D(Collider2D col)
    {
        Debug.Log("GameObject1 collided with " + col.name);
        restart = true;
        timer = 0.0f;
    }
}
```

This is `Example2` which is the collide script for the second GameObject:

```csharp
using System.Collections;
using System.Collections.Generic;
using UnityEngine;// Create a rectangle that the other GameObject will collide with.
// Note that this GameObject has no visibility.
// (View in the Scene view to see this GameObject.)public class Example2 : MonoBehaviour
{
    void Awake()
    {
        BoxCollider2D bc;
        bc = gameObject.AddComponent<BoxCollider2D>() as BoxCollider2D;
        bc.size = new Vector2(3.0f, 1.0f);
        bc.isTrigger = true;        gameObject.transform.localScale = new Vector3(3.0f, 1.0f, 1.0f);
        gameObject.transform.position = new Vector3(0.0f, -2.0f, 0.0f);
    }    void OnTriggerEnter2D(Collider2D col)
    {
        Debug.Log("GameObject2 collided with " + col.name);
    }
}
```
