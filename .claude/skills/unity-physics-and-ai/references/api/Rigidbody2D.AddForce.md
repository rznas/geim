<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rigidbody2D.AddForce.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| force | Components of the force in the X and Y axes. |
| mode | The method used to apply the specified force. |

### Description

Apply a force to the rigidbody.

The force is specified as two separate components in the X and Y directions (there is no Z direction in 2D physics). The object will be accelerated by the force according to the law *force = mass x acceleration* - the larger the mass, the greater the force required to accelerate to a given speed.

If you don’t specify a ForceMode2D the default will be used. The default in this case is ForceMode2D.Force which adds force over time, using mass.

To use the example scripts below, drag and drop your chosen script onto a Sprite in the Hierarchy. Make sure that the Sprite has a Rigidbody2D component.

 Additional resources: AddForceAtPosition, AddTorque, mass, linearVelocity, AddForce, ForceMode2D.

```csharp
// The sprite will fall under its weight.  After a short time the
// sprite will start its upwards travel due to the thrust force that
// is added in the opposite direction.using UnityEngine;
using System.Collections;public class Example : MonoBehaviour
{
    public Texture2D tex;    private Rigidbody2D rb2D;
    private Sprite mySprite;
    private SpriteRenderer sr;
    private float thrust = 1f;    void Awake()
    {
        sr = gameObject.AddComponent<SpriteRenderer>();
        rb2D = gameObject.AddComponent<Rigidbody2D>();
    }    void Start()
    {
        mySprite = Sprite.Create(tex, new Rect(0.0f, 0.0f, 128.0f, 128.0f), new Vector2(0.5f, 0.5f), 100.0f);        sr.color = new Color(0.9f, 0.9f, 0.5f, 1.0f);
        sr.sprite = mySprite;
        transform.position = new Vector3(0.0f, -2.0f, 0.0f);
    }    void FixedUpdate()
    {
        rb2D.AddForce(transform.up * thrust);
        // Alternatively, specify the force mode, which is ForceMode2D.Force by default
        rb2D.AddForce(transform.up * thrust, ForceMode2D.Impulse);
    }
}
```
