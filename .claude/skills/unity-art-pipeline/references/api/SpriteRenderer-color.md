<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SpriteRenderer-color.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Rendering color for the Sprite graphic.

The selected vertex color becomes the rendering color, and is accessible in a pixel shader. The default color is white when no color is selected.

```csharp
//This example outputs Sliders that control the red green and blue elements of a sprite's color
//Attach this to a GameObject and attach a SpriteRenderer componentusing UnityEngine;public class Example : MonoBehaviour
{
    SpriteRenderer m_SpriteRenderer;
    //The Color to be assigned to the Renderer’s Material
    Color m_NewColor;    //These are the values that the Color Sliders return
    float m_Red, m_Blue, m_Green;    void Start()
    {
        //Fetch the SpriteRenderer from the GameObject
        m_SpriteRenderer = GetComponent<SpriteRenderer>();
        //Set the GameObject's Color quickly to a set Color (blue)
        m_SpriteRenderer.color = Color.blue;
    }    void OnGUI()
    {
        //Use the Sliders to manipulate the RGB component of Color
        //Use the Label to identify the Slider
        GUI.Label(new Rect(0, 30, 50, 30), "Red: ");
        //Use the Slider to change amount of red in the Color
        m_Red = GUI.HorizontalSlider(new Rect(35, 25, 200, 30), m_Red, 0, 1);        //The Slider manipulates the amount of green in the GameObject
        GUI.Label(new Rect(0, 70, 50, 30), "Green: ");
        m_Green = GUI.HorizontalSlider(new Rect(35, 60, 200, 30), m_Green, 0, 1);        //This Slider decides the amount of blue in the GameObject
        GUI.Label(new Rect(0, 105, 50, 30), "Blue: ");
        m_Blue = GUI.HorizontalSlider(new Rect(35, 95, 200, 30), m_Blue, 0, 1);        //Set the Color to the values gained from the Sliders
        m_NewColor = new Color(m_Red, m_Green, m_Blue);        //Set the SpriteRenderer to the Color defined by the Sliders
        m_SpriteRenderer.color = m_NewColor;
    }
}
```
