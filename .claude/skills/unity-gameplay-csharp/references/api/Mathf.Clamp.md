<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Mathf.Clamp.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| value | The floating point value to restrict inside the range defined by the minimum and maximum values. |
| min | The minimum floating point value to compare against. |
| max | The maximum floating point value to compare against. |

### Returns

**float** The float result between the minimum and maximum values.

### Description

Clamps the given value between the given minimum float and maximum float values. Returns the given value if it is within the minimum and maximum range.

Returns the minimum value if the given float value is less than the minimum. Returns the maximum value if the given value is greater than the maximum value. Use Clamp to restrict a value to a range that is defined by the minimum and maximum values.
 Returns an undefined value if the minimum value is greater than the maximum value.

```csharp
using UnityEngine;// Mathf.Clamp example.
//
// Animate a cube along the x-axis using a sine wave.
// Let the minimum and maximum positions on the x-axis
// be changed.  The cube will be visible inside the
// minimum and maximum values.public class ExampleScript : MonoBehaviour
{
    private float xMin = -0.5f, xMax = 0.5f;
    private float timeValue = 0.0f;    void Update()
    {
        // Compute the sin position.
        float xValue = Mathf.Sin(timeValue * 5.0f);        // Now compute the Clamp value.
        float xPos = Mathf.Clamp(xValue, xMin, xMax);        // Update the position of the cube.
        transform.position = new Vector3(xPos, 0.0f, 0.0f);        // Increase animation time.
        timeValue = timeValue + Time.deltaTime;        // Reset the animation time if it is greater than the planned time.
        if (xValue > Mathf.PI * 2.0f)
        {
            timeValue = 0.0f;
        }
    }    void OnGUI()
    {
        // Let the minimum and maximum values be changed
        xMin = GUI.HorizontalSlider(new Rect(25, 25, 100, 30), xMin, -1.0f, +1.0f);
        xMax = GUI.HorizontalSlider(new Rect(25, 60, 100, 30), xMax, -1.0f, +1.0f);        // xMin is kept less-than or equal to xMax.
        if (xMin > xMax)
        {
            xMin = xMax;
        }        // Display the xMin and xMax value with better size labels.
        GUIStyle fontSize = new GUIStyle(GUI.skin.GetStyle("label"));
        fontSize.fontSize = 24;        GUI.Label(new Rect(135, 10, 150, 30), "xMin: " + xMin.ToString("f2"), fontSize);
        GUI.Label(new Rect(135, 45, 150, 30), "xMax: " + xMax.ToString("f2"), fontSize);
    }
}
```

### Parameters

| Parameter | Description |
| --- | --- |
| value | The integer point value to restrict inside the min-to-max range. |
| min | The minimum integer point value to compare against. |
| max | The maximum integer point value to compare against. |

### Returns

**int** The int result between min and max values.

### Description

Clamps the given value between a range defined by the given minimum integer and maximum integer values. Returns the given value if it is within min and max.

Returns the min value if the given value is less than the min value. Returns the max value if the given value is greater than the max value. The min and max parameters are inclusive. For example, Clamp(10, 0, 5) will return a maximum argument of 5 and not 4.

```csharp
using UnityEngine;// Mathf.Clamp integer example.
//
// Add or subtract values from health.
// Keep health between 1 and 100. Start at 17.public class ExampleScript : MonoBehaviour
{
    public int health = 17;
    private int[] healthUp = new int[] {25, 10, 5, 1};
    private int[] healthDown = new int[] {-10, -5, -2, -1};    // Width and height for the buttons.
    private int xButton = 75;
    private int yButton = 50;    // Place of the top left button.
    private int xPos1 = 50, yPos1 = 100;
    private int xPos2 = 125, yPos2 = 100;    void OnGUI()
    {
        GUI.skin.label.fontSize = 20;
        GUI.skin.button.fontSize = 20;        // Generate and show positive buttons.
        for (int i = 0; i < healthUp.Length; i++)
        {
            if (GUI.Button(new Rect(xPos1, yPos1 + i * yButton, xButton, yButton), healthUp[i].ToString()))
            {
                health += healthUp[i];
            }
        }        // Generate and show negative buttons.
        for (int i = 0; i < healthDown.Length; i++)
        {
            if (GUI.Button(new Rect(xPos2, yPos2 + i * yButton, xButton, yButton), healthDown[i].ToString()))
            {
                health += healthDown[i];
            }
        }        // Show health between 1 and 100.
        health = Mathf.Clamp(health, 1, 100);
        GUI.Label(new Rect(xPos1, xPos1, 2 * xButton, yButton), "Health: " + health.ToString("D3"));
    }
}
```
