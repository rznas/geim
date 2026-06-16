<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AI.NavMeshAgent-updatePosition.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Gets or sets whether the transform position is synchronized with the simulated agent position. The default value is true.

When true: changing the transform position will affect the simulated position and vice-versa.

When false: the simulated position will not be applied to the transform position and vice-versa.

Setting updatePosition to false can be used to enable explicit control of the transform position via script. This allows you to use the agent's simulated position to drive another component, which in turn sets the transform position (eg. animation with root motion or physics).

When enabling the updatePosition (from previously being disabled), the transform will be moved to the simulated position. This way the agent stays constrained to the navmesh surface.
