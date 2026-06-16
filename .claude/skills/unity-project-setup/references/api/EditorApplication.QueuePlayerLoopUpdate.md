<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorApplication.QueuePlayerLoopUpdate.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Normally, a player loop update will occur in the editor when the Scene has been modified. This method allows you to queue a player loop update regardless of whether the Scene has been modified.

When the Scene is modified it forces a repaint of any window that has autoRepaintOnSceneChange set to true. Additionally, the player loop will run and consequently update any scripts that are marked with ExecuteInEditMode or MonoBehaviours that have runInEditMode set to true.

Sometimes you may want more consistent updates even when the Scene has not been modified, so you can call this method to queue an update.

 Additional resources: ExecuteInEditMode, MonoBehaviour.runInEditMode, EditorWindow.autoRepaintOnSceneChange.
