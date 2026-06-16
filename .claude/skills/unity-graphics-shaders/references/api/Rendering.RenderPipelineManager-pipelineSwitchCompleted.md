<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.RenderPipelineManager-pipelineSwitchCompleted.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Indicate when Render Pipeline switch is in progress.

The value is `false` if the render pipeline is in the process of being switched. The value is `true` if the switch has completed and the render pipeline is ready for use.

Unity doesn't switch the render pipeline immediately when you set GraphicsSettings.currentRenderPipeline or QualitySettings.renderPipeline. Unity only initializes a new RenderPipeline instance the first time any Camera renders after you set a new RenderPipelineAsset. You can use this property to check if this has happened and the switch has finished.

You can also subscribe to the RenderPipelineManager.activeRenderPipelineAssetChanged and RenderPipelineManager.activeRenderPipelineTypeChanged callbacks on the RenderPipelineManager if you want to receive a callback instead of using a property.
