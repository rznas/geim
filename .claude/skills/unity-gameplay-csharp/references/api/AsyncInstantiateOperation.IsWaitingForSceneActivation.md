<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AsyncInstantiateOperation.IsWaitingForSceneActivation.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**bool** True if the operation is waits for user to allow the scene activation.

### Description

This property can be true only if allowSceneActivation is set to false, and if the operation has already completed everything needed for object instantiation except for the main thread integrating the objects and calling their Awake methods. Users can set allowSceneActivation to true to trigger the activation or call the Cancel method to cancel instantiation.
