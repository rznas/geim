<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AI.NavMeshAgent-autoTraverseOffMeshLink.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Should the agent move across OffMeshLinks automatically?

Off-mesh links are used to connect disjoint regions of the NavMesh. Usually, a character should be able to pass through or *traverse* a link automatically, which will happen if this property is set to true. However, it can also be set to false in cases where special control over movement is needed.

Additional resources: isOnOffMeshLink, CompleteOffMeshLink.
