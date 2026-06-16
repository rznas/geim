<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.ProjectAuditor.Editor.Core.DiagnosticParameterAttribute.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Used to mark an integer field in an class that inherits from ModuleAnalyzer as being a Diagnostic Parameter.

Diagnostic Parameters are used to define threshold values against which to compare other values when an Analyzer is deciding whether or not something constitutes a reportable issue. Whilst Analyzers are free to use hard-coded constants as threshold values, Diagnostic Parameters allow you to change values in Settings > Project Auditor as a project's requirements evolve, or to set different values for different target platforms.

 Diagnostic Parameters and their default values are automatically registered in the DiagnosticParams object held by ProjectAuditorSettings, where their values can be customized if required. When ProjectAuditor initializes prior to running analysis, the values in the DiagnosticParams held by AnalysisParams are automatically cached back in their corresponding fields which can be used during analysis.

### Properties

| Property | Description |
| --- | --- |
| DefaultValue | The default value for this parameter. |
| MaxValue | The maximum value for this parameter. |
| MinValue | The minimum value for this parameter. |
| Name | The Diagnostic Parameter's name. This name should uniquely identify this parameter within a project. |
| Tooltip | Text about this DiagnosticParameter to show as a tooltip in Project Settings. |
| UserFriendlyName | The Diagnostic Parameter's user friendly name as will be seen in Project Settings. |

### Constructors

| Constructor | Description |
| --- | --- |
| DiagnosticParameterAttribute | Constructor. |
