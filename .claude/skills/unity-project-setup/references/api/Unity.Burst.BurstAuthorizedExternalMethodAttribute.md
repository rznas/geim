<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Burst.BurstAuthorizedExternalMethodAttribute.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The BurstAuthorizedExternalMethod attribute lets you mark a function as being authorized for Burst to call from within a static constructor.

Normally, Burst will not call into an external method while in a static constructor, because the static constructor may be called multiple times and there is no guarantee that any particular external function is "pure" (has no side effects when called twice). The BurstAuthorizedExternalMethod signifies that a function is "pure," in the sense that the end result of calling it multiple times, is the same as if you had called it only once. This indicates that it is safe for Burst to call from a static constructor.
