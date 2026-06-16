<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SceneManagement.Stage.GetHashForStateStorage.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**Hash128** The hash code identifying this stage.

### Description

Unity calls this method to get a hash code that is used to save the state of the Stage to disk.

The state includes Scene view settings and the Camera position. Some Stage types may store additional state data such as the scroll position in the Hierarchy window. Saving the state ensures that, if you close a stage and later open it, Scene view settings, the Camera position, and other stored objects are in the same state you left them in when you closed the Stage.

For stages that use the assetPath property, the hash code is by default based on the Asset GUID, meaning the state is saved individually per Asset. For stages that don't use the assetPath property, the hash code is by default shared for all stages of that type. Custom stage types can override this method to use different logic to determine in which way stage state should be reused.
