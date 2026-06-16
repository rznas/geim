<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/RenderPickingArgs-pickingIndex.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Specifies the picking index value that the first pickable object uses to write to the picking render texture.

The picking index must be encoded to a Vector4 `selectionId` value that uses HandleUtility.EncodeSelectionId, and output from the shader. If you are rendering more than one pickable object in the callback, increment the `pickingIndex` for every additional object.

Additional resources: HandleUtility.EncodeSelectionId.
