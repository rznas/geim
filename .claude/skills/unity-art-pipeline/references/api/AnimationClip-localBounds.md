<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AnimationClip-localBounds.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

AABB of this Animation Clip in local space of Animation component that it is attached too.

It is precomputed on import for imported models/animations based on the meshes that this animation clip affects. This bounding box is specific to the mesh(es) that this clip is attached to during import, i.e. this means that it is calculated based on the file that is part of and on the "Model" file if you're using Model@Animation notation.
