<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.ProjectAuditor.Editor.AnalysisParams.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Represents an object which can be passed to an instance of ProjectAuditor to specify how analysis should be performed and to provide delegates to be called when analysis steps have completed. AnalysisParams defaults to values which instruct ProjectAuditor to analyze everything in the project for the current build target, but instances can be populated with custom data in an object initializer to provide additional constraints.

### Properties

| Property | Description |
| --- | --- |
| AssemblyNames | Assemblies to analyze. If null, all compiled assemblies will be analyzed. |
| Categories | Issue Categories to include in the audit. If null, the analysis will include all categories. |
| CodeOptimization | Code optimization mode. The default is CodeOptimization.Release. |
| CompilationMode | The Compilation mode to use during code analysis. The default is CompilationMode.Player. |
| DiagnosticParams | The DiagnosticParams object which defines the customizable thresholds for reporting certain diagnostics. By default, this makes a copy of ProjectAuditorSettings. |
| OnCompleted | Notifies that all Modules completed their analysis. |
| OnIncomingIssues | Reports a batch of new issues. Note that this be called multiple times per analysis. |
| OnModuleCompleted | Notifies that a Module completed its analysis. |
| Platform | Analysis platform. The default platform is the currently active build target. |

### Constructors

| Constructor | Description |
| --- | --- |
| AnalysisParams | AnalysisParams constructor. |

### Public Methods

| Method | Description |
| --- | --- |
| WithAdditionalDiagnosticRules | Adds a list of additional Rules which will be applied during analysis. |
