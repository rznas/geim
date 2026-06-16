<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/MonoBehaviour.OnCollisionEnter2D.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| other | The Collision2D data associated with this collision. |

### Description

Sent when an incoming collider makes contact with this object's collider (2D physics only).

Further information about the collision is reported in the Collision2D parameter passed during the call. If you don't need this information then you can declare OnCollisionEnter2D without the parameter.

**Note:** OnCollisionEnter2D is only called on scripts attached to GameObjects that have a Collider2D and/or Rigidbody2D directly involved in the collision. It is not automatically passed up to parent GameObjects unless they themselves have the relevant components. Compound colliders (parent Rigidbody2D + child Collider2Ds) receive events on both the parent and the specific child involved. Collision events are sent to disabled MonoBehaviours, to allow enabling Behaviours in response to collisions.

Additional resources: Collision2D class, OnCollisionExit2D, OnCollisionStay2D.

The following two script examples create an OnCollisionEnter2D demo. Example1 generates a (white) `box` sprite called `GameObject1`. This sprite collides with the Example2 `GameObject2` which is the `floor` sprite. The `box` sprite can be moved using the up, down, left and right keys. For example, once the `box` has fallen to the `floor` it can be pushed upwards with the up key. Once the up key is released the `box` will fall back to the `floor`. Each time the `box` hits the `floor` an OnCollisionEnter2D call will be made. `GameObject1` simply provides a string in the console to indicate the collision has happened.

```csharp
using UnityEngine;// Create a box sprite which falls and hits a floor sprite.  The box can be moved/animated
// with the up, left, right, and down keys.  Moving the box sprite upwards and letting it
// fall will increase the number of calls from OnCollisionEnter2D.public class Example1 : MonoBehaviour
{
    public Texture2D tex;    void Awake()
    {
        SpriteRenderer sr = gameObject.AddComponent<SpriteRenderer>() as SpriteRenderer;
        transform.position = new Vector3(0.0f, 2.5f, 0.0f);        Sprite sp = Sprite.Create(tex, new Rect(0.0f, 0.0f, tex.width, tex.height), new Vector2(0.5f, 0.5f), 100.0f);
        sr.sprite = sp;        gameObject.AddComponent<BoxCollider2D>();        Rigidbody2D rb = gameObject.AddComponent<Rigidbody2D>();
        rb.bodyType = RigidbodyType2D.Dynamic;
    }    void FixedUpdate()
    {
        float moveHorizontal = Input.GetAxis("Horizontal");
        float moveVertical = Input.GetAxis("Vertical");        gameObject.transform.Translate(moveHorizontal * 0.05f, moveVertical * 0.25f, 0.0f);
    }    // called when the cube hits the floor
    void OnCollisionEnter2D(Collision2D col)
    {
        Debug.Log("OnCollisionEnter2D");
    }
}
```

Example2. This creates the floor.

```csharp
using UnityEngine;public class Example2 : MonoBehaviour
{
    public Texture2D tex;    void Awake()
    {
        SpriteRenderer sr = gameObject.AddComponent<SpriteRenderer>() as SpriteRenderer;
        transform.position = new Vector3(0.0f, -2.0f, 0.0f);        Sprite sp = Sprite.Create(tex, new Rect(0.0f, 0.0f, tex.width, tex.height), new Vector2(0.5f, 0.5f), 100.0f);
        sr.sprite = sp;        gameObject.AddComponent<BoxCollider2D>();
    }
}
```

The two objects are stored as GameObjects each with one of the scripts. These GameObjects start with just the script example that it needs. Example1 is applied to GameObject1 and Example2 to GameObject2.
