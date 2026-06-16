<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GameObject-isStatic.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Whether there are any Static Editor Flags set for the GameObject.

Returns `true` if any StaticEditorFlags are set. Returns `false` if no Static Editor Flags are set.

Set to `true` to enable all Static Editor Flags. Set to `false` to disable all Static Editor Flags.

Static Editor Flags determine which Unity systems consider a GameObject as static, and include the GameObject in their precomputations in the Unity Editor. Setting StaticEditorFlags at runtime has no effect on these systems.

For more information, refer to Unity Manual documentation on Static Editor Flags.

Additional resources: StaticEditorFlags, GameObjectUtility.SetStaticEditorFlags.
