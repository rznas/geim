<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Android.Gradle.BaseBlock.SetRaw.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| rawString | Raw string value. |

### Description

Sets a raw string value to this block.

Empty string is a valid value.

Unity throws an exception if:

- This block has child elements.
- The parent element has a raw value set.
- Child elements of this block were already modified in the same script.

To override child elements, first use `Clear()` on this block to clear it.
