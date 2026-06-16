<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Camera-rect.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Where on the screen is the camera rendered in normalized coordinates.

In `rect`, the bottom-left of the screen is (0,0) and the top-right of the screen is (1,1).

```csharp
using UnityEngine;// Change the width of the viewport each time space key is pressedpublic class ExampleClass : MonoBehaviour
{
    private Camera cam;    void Start()
    {
        cam = Camera.main;
    }    void Update()
    {
        if (Input.GetKey("space"))
        {
            // choose the margin randomly
            float margin = Random.Range(0.0f, 0.3f);
            // setup the rectangle
            cam.rect = new Rect(margin, 0.0f, 1.0f - margin * 2.0f, 1.0f);
        }
    }
}
```
