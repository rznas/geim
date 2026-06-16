<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Experimental.AI.NavMeshWorld.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Assembles together a collection of NavMesh surfaces and links that are used as a whole for performing navigation operations.

Operations are initialized against one world, can use only the NavMeshes inside that world and are not aware of the existence of any other NavMeshWorld.

Copying this object only produces a new reference to the same NavMesh data, it does not duplicate the data in memory.

**Important note:** Currently only a single NavMesh world can be used and a reference to it can be obtained through the NavMeshWorld.GetDefaultWorld method. In the future, multiple NavMesh worlds will be able to be created and any two of them will be completely isolated from each other.

Additional resources: NavMeshQuery.
