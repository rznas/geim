<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.ProjectAuditor.Editor.Core.ModuleAnalyzer.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Base class for all ModuleAnalyzers

Inheriting directly from ModuleAnalyzer will not create an Analyzer that a Module will create or run. You should inherit from one of the following classes, all of which declare Analyze() methods: " AnimationModuleAnalyzer " AssetsModuleAnalyzer " AudioClipModuleAnalyzer " CodeModuleInstructionAnalyzer " MeshModuleAnalyzer " PackagesModuleAnalyzer " SettingsModuleAnalyzer " ShaderModuleAnalyzer " SpriteAtlasModuleAnalyzer " TextureModuleAnalyzer

### Public Methods

| Method | Description |
| --- | --- |
| Initialize | Initializes the Analyzer |
