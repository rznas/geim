<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Cursor.SetCursor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| texture | The texture to use for the cursor. To use a texture, import it with `Read/Write` enabled. Alternatively, you can use the default cursor import setting. If you created your cursor texture from code, it must be in RGBA32 format, have alphaIsTransparency enabled, and have no mip chain. To use the default cursor, set the texture to `Null`. |
| hotspot | The offset from the top left of the texture to use as the target point. This must be in the bounds of the cursor. |
| cursorMode | Whether to render this cursor as a hardware cursor on supported platforms, or force software cursor. |

### Description

Sets a custom cursor to use as your cursor.

Call Cursor.SetCursor with a Texture2D to change the appearance of the hardware pointer (mouse cursor).

```csharp
using UnityEngine;// Attach this script to a GameObject with a Collider, then mouse over the object to see your cursor change.
public class ExampleClass : MonoBehaviour
{
    public Texture2D cursorTexture;
    public CursorMode cursorMode = CursorMode.Auto;
    public Vector2 hotSpot = Vector2.zero;    void OnMouseEnter()
    {
        Cursor.SetCursor(cursorTexture, hotSpot, cursorMode);
    }    void OnMouseExit()
    {
        // Pass 'null' to the texture parameter to use the default system cursor.
        Cursor.SetCursor(null, Vector2.zero, cursorMode);
    }
}
```
