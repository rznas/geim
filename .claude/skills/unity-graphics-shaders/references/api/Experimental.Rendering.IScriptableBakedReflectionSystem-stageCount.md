<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Experimental.Rendering.IScriptableBakedReflectionSystem-stageCount.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Number of stages of the baking process.

When ticking the ScriptableBakedReflectionSystem (see IScriptableBakedReflectionSystem.Tick, the current IScriptableBakedReflectionSystem is expected to bake data through stages.

Your own reflection system implementation may have a different number of stages, you should set the number here.

The BuiltinScriptableBakedReflectionSystem goes through 2 stages: BakeReflectionProbes, RenderRealtimeProbes.
