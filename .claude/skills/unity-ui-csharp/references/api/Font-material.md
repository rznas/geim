<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Font-material.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The material used for the font display.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    // Swap 3D Text font color each second
    // Add this script to a text mesh object
    bool flag = false;
    float rate = 1f;
    TextMesh t;    void Update()
    {
        t = transform.GetComponent<TextMesh>();
        if (Time.time > rate)
        {
            if (flag)
            {
                t.font.material.color = Color.yellow;
                flag = false;
            }
            else
            {
                t.font.material.color = Color.red;
                flag = true;
            }
            rate += 1;
        }
        t.text = "This is a 3D text changing colors!";
    }
}
```
