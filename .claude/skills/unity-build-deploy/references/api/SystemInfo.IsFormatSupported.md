<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SystemInfo.IsFormatSupported.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| format | The GraphicsFormat format to look up. |
| usage | The GraphicsFormatUsage usage to look up. |

### Returns

**bool** Returns true if the format is supported for the specific usage. Returns false otherwise.

### Description

Verifies that the specified graphics format is supported for the specified usage.

If a specific usage is not supported by a format, the operation will fail.

Additional resources: GraphicsFormat enum and GraphicsFormatUsage flags.

### Description

Obsolete. Use the overload with a GraphicsFormatUsage parameter instead.
