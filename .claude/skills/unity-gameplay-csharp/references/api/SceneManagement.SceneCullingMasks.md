<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SceneManagement.SceneCullingMasks.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Masks that control what kind of Scene views and Game views Unity should render a GameObject in.

You can set masks on Scenes via EditorSceneManager.SetSceneCullingMask and on render batches via BatchRendererGroup.AddBatch.

### Static Properties

| Property | Description |
| --- | --- |
| DefaultSceneCullingMask | Specifies the default culling mask for a Scene. Use the bits from this Scene culling mask for objects that you want to render in both in the Game view and the Scene view. |
| GameViewObjects | The bits from this mask specify GameObjects that Unity should render in Game view. |
| MainStageSceneViewObjects | The bits from this mask specify GameObjects that Unity should render in Scene views showing the main stage. |
