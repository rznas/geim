<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.ProjectAuditor.Editor.DiagnosticParams.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Provides numeric parameters with arbitrary names and defaults, with optional overrides for individual target build platforms.

When deciding whether to report a diagnostic issue, some Analyzers need to compare a value extracted from the project with an arbitrary threshold value: For example, when reporting that the project contains textures larger than some specified size. DiagnosticParams are saved in the ProjectAuditorSettings asset, which should be included in the project's version control repository. By default, every AnalysisParams is constructed with a copy of the global DiagnosticParams for use during analysis. Individual parameters can be overridden on different platforms (for example, to set different texture size thresholds on different target platforms). DiagnosticParams will return the parameter value that corresponds to the target platform, or the default parameter if there is no override for the platform.

### Constructors

| Constructor | Description |
| --- | --- |
| DiagnosticParams | Default constructor |

### Public Methods

| Method | Description |
| --- | --- |
| DoGUI | Draw project settings GUI for a specific BuildTargetGroup. |
| GetDefault | Get the default value for this parameter. |
| GetParameter | Get the value of a named parameter. The parameter must have previously been registered with the RegisterParameter method. |
| OnAfterDeserialize | Unity calls this method automatically after deserialization. |
| OnBeforeSerialize | Unity calls this method automatically before serialization. |
| RegisterParameter | Register a parameter by declaring its name and default value. Parameters are registered on the "default" platform, so are available for retrieval on every target platform. |
| SetAnalysisPlatform | Sets the target analysis platform. When retrieving parameters, DiagnosticParams will first check the values specific to this platform. |
| SetParameter | Set the value of a named parameter for a given analysis platform. |
