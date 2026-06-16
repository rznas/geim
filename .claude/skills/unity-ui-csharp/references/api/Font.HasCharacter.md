<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Font.HasCharacter.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| c | The character to check for. |

### Returns

**bool** Whether or not the font has the character specified.

### Description

Does this font have a specific character?

This function checks whether the font has a particular character defined. Some fonts do not have all characters defined (for example, no symbols, or no lower case characters).

```csharp
using UnityEngine;public class FontCheck : MonoBehaviour
{
    // Detects if the current font of a 3D text
    // supports '-' sign
    TextMesh t;
    void Start()
    {
        t = transform.GetComponent<TextMesh>();
        if (t.font.HasCharacter('-'))
        {
            Debug.Log("Font supports '-' sign.");
        }
        else
        {
            Debug.LogWarning("This font doesnt support '-'");
        }
    }
}
```
