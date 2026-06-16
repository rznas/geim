<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/RenderTexture.MarkRestoreExpected.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Indicate that there's a RenderTexture restore operation expected.

When in mobile graphics emulation mode, Unity issues warnings when a RenderTexture "restore" operation is performed. Restore happens when rendering into a texture, without clearing or discarding (DiscardContents) it first. This is a costly operation on many mobile GPUs and multi-GPU systems and best should be avoided.

However, if your rendering effect absolutely needs a RenderTexture restore, you can call this function to indicate that yes, a restore is expected, and Unity will not issue a warning here.
