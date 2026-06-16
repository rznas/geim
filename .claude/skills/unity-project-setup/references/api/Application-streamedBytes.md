<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Application-streamedBytes.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

How many bytes have we downloaded from the main unity web stream (Read Only).

In the Web Player (obsolete now), this property returns the number of compressed bytes downloaded so far. It always returns zero.

Additional resources: GetStreamProgressForLevel function.

```csharp
using UnityEngine;
using UnityEngine.UI;class Example : MonoBehaviour
{
    Text byteDisplay;
    void Start()
    {
        byteDisplay = GetComponent<Text>();
    }    // Prints to a Text UI how many bytes we have streamed.
    void Update()
    {
        byteDisplay.text = "Streamed Bytes: " + Application.streamedBytes.ToString();
    }
}
```

From Unity version 5.4.0 onwards, webplayer support was discontinued.
