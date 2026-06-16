<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Jobs.TransformAccess.GetLocalPositionAndRotation.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Gets the position and rotation of the transform in local space relative to its parent transform.

When getting both the position and rotation of a transform, calling this method is slightly more efficient than querying localPosition and localRotation individually.

If the transform has no parent, then calling this is equivalent to calling GetPositionAndRotation.
