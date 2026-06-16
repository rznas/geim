<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Input.GetTouch.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| index | The touch input on the device screen. |

### Returns

**Touch** Touch details in the struct.

### Description

Call Input.GetTouch to obtain a Touch struct.

**Note**: This API is part of the legacy Input Manager. The recommended best practice is that you don't use this API in new projects. For new projects, use the Input System package. To learn more about input, refer to Input.

Input.GetTouch returns Touch for a selected screen touch (for example, from a finger or stylus). Touch describes the screen touch. The index argument selects the screen touch.

Input.touchCount provides the current number of screen touches. If Input.touchCount is greater than zero, the GetTouch index sets which screen touch to check. Touch returns a `struct` with the screen touch details. Each extra screen touch uses an increasing Input.touchCount.

GetTouch returns a Touch struct. Use zero to obtain the first screen touch. As an example, Touch includes position in pixels.

No temporary variables are allocated.

```csharp
using UnityEngine;
using System.Collections;
using UnityEngine.iOS;// Input.GetTouch example.
//
// Attach to an origin based cube.
// A screen touch moves the cube on an iPhone or iPad.
// A second screen touch reduces the cube size.public class ExampleClass : MonoBehaviour
{
    private Vector3 position;
    private float width;
    private float height;    void Awake()
    {
        width = (float)Screen.width / 2.0f;
        height = (float)Screen.height / 2.0f;        // Position used for the cube.
        position = new Vector3(0.0f, 0.0f, 0.0f);
    }    void OnGUI()
    {
        // Compute a fontSize based on the size of the screen width.
        GUI.skin.label.fontSize = (int)(Screen.width / 25.0f);        GUI.Label(new Rect(20, 20, width, height * 0.25f),
            "x = " + position.x.ToString("f2") +
            ", y = " + position.y.ToString("f2"));
    }    void Update()
    {
        // Handle screen touches.
        if (Input.touchCount > 0)
        {
            Touch touch = Input.GetTouch(0);            // Move the cube if the screen has the finger moving.
            if (touch.phase == TouchPhase.Moved)
            {
                Vector2 pos = touch.position;
                pos.x = (pos.x - width) / width;
                pos.y = (pos.y - height) / height;
                position = new Vector3(-pos.x, pos.y, 0.0f);                // Position the cube.
                transform.position = position;
            }            if (Input.touchCount == 2)
            {
                touch = Input.GetTouch(1);                if (touch.phase == TouchPhase.Began)
                {
                    // Halve the size of the cube.
                    transform.localScale = new Vector3(0.75f, 0.75f, 0.75f);
                }                if (touch.phase == TouchPhase.Ended)
                {
                    // Restore the regular size of the cube.
                    transform.localScale = new Vector3(1.0f, 1.0f, 1.0f);
                }
            }
        }
    }
}
```

A second example:

```csharp
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    public GameObject projectile;
    public GameObject clone;    void Update()
    {
        for (int i = 0; i < Input.touchCount; ++i)
        {
            if (Input.GetTouch(i).phase == TouchPhase.Began)
            {
                clone = Instantiate(projectile, transform.position, transform.rotation) as GameObject;
            }
        }
    }
}
```

A third example:

```csharp
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    public GameObject particle;
    void Update()
    {
        for (int i = 0; i < Input.touchCount; ++i)
        {
            if (Input.GetTouch(i).phase == TouchPhase.Began)
            {
                // Construct a ray from the current touch coordinates
                Ray ray = Camera.main.ScreenPointToRay(Input.GetTouch(i).position);                // Create a particle if hit
                if (Physics.Raycast(ray))
                {
                    Instantiate(particle, transform.position, transform.rotation);
                }
            }
        }
    }
}
```
