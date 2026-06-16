<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/IAnimationClipSource.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Use this interface to have a class provide its own list of Animation Clips to the Animation Window. The class must inherit from MonoBehaviour.

This interface requires an Animator or Animation component to preview Animation Clips in the Scene. Additional resources: AnimationUtility.GetAnimationClips.

### Public Methods

| Method | Description |
| --- | --- |
| GetAnimationClips | Returns a list of Animation Clips. |
