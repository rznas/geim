<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TagHandle.GetExistingTag.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| tagName | The name of the tag to get a handle to. |

### Returns

**TagHandle** A new TagHandle for the existing tag.

### Description

Get a handle to a existing defined tag.

This method can only be used to get references to tags that were already defined. If you pass a tag name which is not already defined, it will throw an exception.

Additional resources: GameObject.CompareTag.
