<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Color-b.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Blue component of the color.

The value ranges from 0 to 1.

```csharp
//Attach this script to a GameObject with a Renderer attached to it
//Use the sliders in Play Mode to change the Color of the GameObject's Materialusing UnityEngine;public class Example : MonoBehaviour
{
    Renderer m_Renderer;
    //Set the Color to white to start off
    public Color color = Color.white;    void Start()
    {
        //Fetch the Renderer of the GameObject
        m_Renderer = GetComponent<Renderer>();
    }    private void OnGUI()
    {
        //Sliders for the red, green and blue components of the Color
        color.r = GUI.HorizontalSlider(new Rect(0, 00, 100, 30), color.r, 0, 1);
        color.g = GUI.HorizontalSlider(new Rect(0, 40, 100, 30), color.g, 0, 1);
        color.b = GUI.HorizontalSlider(new Rect(0, 80, 100, 30), color.b, 0, 1);        //Set the Color of the GameObject's Material to the new Color
        m_Renderer.material.color = color;
    }
}
```
