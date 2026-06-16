<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SystemInfo.GetCompatibleFormat.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| format | The GraphicsFormat format to look up. |
| usage | The GraphicsFormatUsage usage to look up. |

### Returns

**GraphicsFormat** Returns a format supported by the platform. If no equivalent or compatible format is supported, the function returns GraphicsFormat.None.

### Description

Returns a format supported by the platform for the specified usage.

If the platform supports the specified format for the usage, this method returns the input format. Otherwise, the method searches for a supported format with similar properties to the input format. If the platform doesn't support any similar format, the method returns a fallback format. For example, if the input format is a compressed format that isn't supported, the function returns an uncompressed equivalent format. If the platform doesn't support any equivalent or compatible fallback formats, this method returns GraphicsFormat.None.

Additional resources: GraphicsFormat enum and GraphicsFormatUsage flags.

### Description

Obsolete. Use the overload with a GraphicsFormatUsage parameter instead.
