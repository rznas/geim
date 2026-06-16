<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Time-deltaTime.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The interval in seconds from the last frame to the current one (Read Only).

When called from inside MonoBehaviour.FixedUpdate or anywhere in the Physics update loop, including coroutines that yield WaitForFixedUpdate, `deltaTime` returns Time.fixedDeltaTime. The maximum value for `deltaTime` is defined by Time.maximumDeltaTime.

The value `deltaTime` is scaled according to Time.timeScale. If the game is paused by setting Time.timeScale to `0`, then `deltaTime` also becomes `0`. The first frames after changing Time.timeScale can produce unexpected `deltaTime` values. Use Time.unscaledDeltaTime instead if you need wall-clock time during pause.

The value of `deltaTime` can be unreliable in callbacks that might be invoked multiple times per frame, such as MonoBehaviour.OnGUI or UI layout or repaint events.

The first frame `Update` can produce a very small or zero `deltaTime` on some platforms, as can the first frame after a domain and scene reload.

Depending on the platform and the Application.runInBackground setting, when the application loses focus or is in the background, `Update` might be called infrequently or with long gaps, producing large `deltaTime` values.

The following example rotates a GameObject around its z axis at a constant speed.

For more information on how this property relates to the other time properties, refer to Time and Frame Rate Management in the Unity manual.

```csharp
using UnityEngine;
// Rotate around the z axis at a constant speed
public class ConstantRotation : MonoBehaviour
{
    public float degreesPerSecond = 2.0f;
    void Update()
    {
        transform.Rotate(0, 0, degreesPerSecond * Time.deltaTime);
    }
}
```

The following example implements a timer. The timer adds deltaTime each frame. The example displays the timer value and resets it when it reaches 2 seconds. Time.timeScale controls the speed at which time passes and how fast the timer resets.

```csharp
using System.Collections;
using System.Collections.Generic;
using UnityEngine;// Time.deltaTime example.
//
// Wait two seconds and display waited time.
// This is typically just beyond 2 seconds.
// Allow the speed of the time to be increased or decreased.
// It can range between 0.5 and 2.0. These changes only
// happen when the timer restarts.public class ScriptExample : MonoBehaviour
{
    private float waitTime = 2.0f;
    private float timer = 0.0f;
    private float visualTime = 0.0f;
    private int width, height;
    private float value = 10.0f;
    private float scrollBar = 1.0f;    void Awake()
    {
        width = Screen.width;
        height = Screen.height;
        Time.timeScale = scrollBar;
    }    void Update()
    {
        timer += Time.deltaTime;        // Check if we have reached beyond 2 seconds.
        // Subtracting two is more accurate over time than resetting to zero.
        if (timer > waitTime)
        {
            visualTime = timer;            // Remove the recorded 2 seconds.
            timer = timer - waitTime;
            Time.timeScale = scrollBar;
        }
    }    void OnGUI()
    {
        GUIStyle sliderDetails = new GUIStyle(GUI.skin.GetStyle("horizontalSlider"));
        GUIStyle sliderThumbDetails = new GUIStyle(GUI.skin.GetStyle("horizontalSliderThumb"));
        GUIStyle labelDetails = new GUIStyle(GUI.skin.GetStyle("label"));        // Set the size of the fonts and the width/height of the slider.
        labelDetails.fontSize = 6 * (width / 200);
        sliderDetails.fixedHeight = height / 32;
        sliderDetails.fontSize = 12 * (width / 200);
        sliderThumbDetails.fixedHeight = height / 32;
        sliderThumbDetails.fixedWidth = width / 32;        // Show the slider. Make the scale to be ten times bigger than the needed size.
        value = GUI.HorizontalSlider(new Rect(width / 8, height / 4, width - (4 * width / 8), height - (2 * height / 4)),
            value, 5.0f, 20.0f, sliderDetails, sliderThumbDetails);        // Show the value from the slider. Make sure that 0.5, 0.6... 1.9, 2.0 are shown.
        float v = ((float)Mathf.RoundToInt(value)) / 10.0f;
        GUI.Label(new Rect(width / 8, height / 3.25f, width - (2 * width / 8), height - (2 * height / 4)),
            "timeScale: " + v.ToString("f1"), labelDetails);
        scrollBar = v;        // Display the recorded time in a certain size.
        labelDetails.fontSize = 14 * (width / 200);
        GUI.Label(new Rect(width / 8, height / 2, width - (2 * width / 8), height - (2 * height / 4)),
            "Timer value is: " + visualTime.ToString("f4") + " seconds.", labelDetails);
    }
}
```
