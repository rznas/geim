<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.UISubset.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Bit mask that specifies which UI subset to render when calling ScriptableRenderContext.CreateUIOverlayRendererList. For any frame, UI subsets must be rendered in the following order: UIToolkit_UGUI, LowLevel.

### Properties

| Property | Description |
| --- | --- |
| UIToolkit_UGUI | Specifies UI Toolkit and UGUI subset. |
| LowLevel | Specifies native low level UI subset (IMGUI and software cursor). |
| All | Specifies all UI subsets. |
