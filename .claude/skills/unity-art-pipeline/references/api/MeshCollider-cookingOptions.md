<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/MeshCollider-cookingOptions.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Options used to enable or disable certain features in mesh cooking.

Mesh cooking is a process of turning a normal mesh into a mesh that is suitable for use in the physics engine. Cooking builds the spatial search structures for the physics queries such as Physics.Raycast as well as supporting structures for the contacts generation. Any mesh has to be cooked before using it runtime. This can happen at import time (if you set the "Generate Colliders" option of the ModelImporter) or run-time.

Mostly useful when generating meshes run-time as it allows to disable certain validity checks that take time to run. Note that with the validity checks disabled, it's the user's responsibilty to provide valid data, otherwise the behaviour might be undefined.
