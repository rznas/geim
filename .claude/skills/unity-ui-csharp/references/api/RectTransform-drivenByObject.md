<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/RectTransform-drivenByObject.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The object that is driving the values of this RectTransform. Value is null if not driven.

Sometimes the values of a RectTransform can be driven by a script. When this is the case, the values should not be editable in the Inspector, and they should not be serialized either.

When a script is driving the values of a RectTransform, that script can set the drivenByObject value to itself, so that the RectTransform can prevent the values from being edited in the Inspector, and from being serialized.

If the script was previously driving the values but no longer is, it should set the drivenByObject value back to null.

A script that is driving the values of a RectTransform should always set all the values, not just a subset; otherwise the remaining values will be undefined and also can't be edited by the user.
