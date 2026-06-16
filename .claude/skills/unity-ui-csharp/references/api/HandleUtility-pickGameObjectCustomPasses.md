<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/HandleUtility-pickGameObjectCustomPasses.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Subscribe to this event to add additional picking objects to the HandleUtility.PickGameObject method.

PickGameObject invokes this delegate when clicking in the SceneView.

An example use case for this event would be if you are rendering meshes with Graphics.RenderMesh, and would like to be able to select the GameObject that represents these meshes.
