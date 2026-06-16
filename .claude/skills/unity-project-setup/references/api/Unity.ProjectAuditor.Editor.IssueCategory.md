<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.ProjectAuditor.Editor.IssueCategory.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Identifiers for all the categories of issues reported by Project Auditor.

As Project Auditor's remit has expanded, so has the definition of what constitutes an issue category. For example, categories relating to assets, shaders or build reports represent categories of information about the project's content but do not necessarily qualify as issues that should be addressed.

### Properties

| Property | Description |
| --- | --- |
| Metadata | Category for General statistics about the analysis process and its results. |
| AssetIssue | Issues relating to asset data or asset import settings |
| Shader | Category for reporting shaders in the project |
| ShaderVariant | Category for reporting shader variants |
| Code | Code Issues, discovered by static code analysis |
| CodeCompilerMessage | Compiler errors and warnings generated whilst compiling code for static analysis |
| ProjectSetting | Issues relating to project settings |
| BuildFile | Category for displaying information about files created during the project build process |
| BuildStep | Category for displaying information about the steps of the build process and how long they took |
| BuildSummary | Category for build summary information |
| Assembly | Category for information about all of the code assemblies in the project |
| PrecompiledAssembly | Category for information about precompiled assemblies |
| ShaderCompilerMessage | Issues reported by the shader compiler |
| Package | Category for displaying installed packages |
| Texture | Issues relating to texture assets and texture import settings |
| AudioClip | Issues relating to Audio Clip assets and import settings |
| ComputeShaderVariant | Category for displaying variants of compute shaders |
| Mesh | Issues relating to Mesh assets and import settings |
| SpriteAtlas | Issues relating to Sprite Atlas assets and import settings |
| Material | Category for showing materials grouped by shader |
| AnimatorController | Issues relating to animator controllers |
| AnimationClip | Issues relating to animation clips |
| Avatar | Issues relating to avatars |
| AvatarMask | Issues relating to avatar masks |
| DomainReload | Issues that could result in undesired behavior if domain reloading is disabled |
| FirstCustomCategory | Enum value indicating the first available custom category |
