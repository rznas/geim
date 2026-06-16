<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Collider2D-errorState.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The error state that indicates the state of the physics shapes the 2D Collider tried to create. (Read Only)

The 2D Collider can sometimes encounter an issue when creating the physics shapes which it represents. This can either be that some of the physics shapes were not able to be created or in the worst case, none of them could be created.

The 2D Collider may not be able to create an underlying physics shape due to the physics engine's constraints on physics shapes, such as the vertices must not be too close or collinear; or that the total physics shape area must not be too small.

Additional resources: ColliderErrorState2D.
