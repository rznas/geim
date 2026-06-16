<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ContactPair.GetContactPoint.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| index | The ContactPairPoint index. |

### Returns

**ContactPairPoint** A reference or a copy of the ContactPairPoint struct at `index`.

### Description

Gets the ContactPairPoint at the provided `index` of this pair.

Can be used with the `ref readonly` keywords to avoid copying the whole struct on the stack.
