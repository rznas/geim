<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SpriteRenderer-size.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Property to set or get the size to render when the SpriteRenderer.drawMode is set to SpriteDrawMode.Sliced or SpriteDrawMode.Tiled.

Assigning a Sprite to SpriteRenderer.sprite when it is null will also set the SpriteRenderer.size value to the Sprite's width and height.

```csharp
using UnityEngine;public class ExampleClass : MonoBehaviour
{
    private Rigidbody2D rb;
    private SpriteRenderer sprRend;    void Awake()
    {
        sprRend = gameObject.AddComponent<SpriteRenderer>() as SpriteRenderer;
        sprRend.drawMode = SpriteDrawMode.Sliced;        rb = gameObject.AddComponent<Rigidbody2D>() as Rigidbody2D;
        rb.bodyType = RigidbodyType2D.Kinematic;
    }    void Start()
    {
        gameObject.GetComponent<SpriteRenderer>().sprite = Resources.Load<Sprite>("image256x128");
        gameObject.transform.Translate(0.0f, 0.0f, 0.0f);
    }    void Update()
    {
        //Press the Space key to increase the size of the sprite
        if (Input.GetKey(KeyCode.Space))
        {
            sprRend.size += new Vector2(0.05f, 0.01f);
            Debug.Log("Sprite size: " + sprRend.size.ToString("F2"));
        }
    }
}
```
