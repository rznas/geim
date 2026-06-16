<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GameObject-activeSelf.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The local active state of the GameObject. True if active, false if inactive. (Read Only)

The local active state of this GameObject, which is set using GameObject.SetActive. A locally active GameObject may still be inactive in the scene hierarchy because a parent is not active. Use GameObject.activeInHierarchy if you want to check if the GameObject is actually treated as active in the Scene.

Additional resources: GameObject.SetActive, GameObject.activeInHierarchy.
