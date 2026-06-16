<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Graphics.CreateAsyncGraphicsFence.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| stage | Which SynchronisationStage to insert the fence after. |

### Returns

**GraphicsFence** Returns a new GraphicsFence.

### Description

Shortcut for calling Graphics.CreateGraphicsFence with GraphicsFenceType.AsyncQueueSynchronisation as the first parameter.

Additional resources: GraphicsFence, Graphics.WaitOnAsyncGraphicsFence, CommandBuffer.WaitOnAsyncGraphicsFence.
