<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.StringView.Substring.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| start | The starting index. |

### Returns

**stringView** A new StringView.

### Description

Returns a substring of the current StringView, starting at index **start** and until the end of the StringView.

This does not create another string. The substring is only a new StringView with the same base string and its start and end indices modified. The starting index is an offset to the current StringView.

### Parameters

| Parameter | Description |
| --- | --- |
| start | The starting index. |
| length | The length of the substring. |

### Returns

**stringView** A new StringView.

### Description

Returns a substring of the current StringView, starting at index **start** and with the specified length.

This does not create another string. The substring is only a new StringView with the same base string and its start and end indices modified. The starting index is an offset to the current StringView.
