<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.ProjectAuditor.Editor.Core.AnalysisContext.IsDescriptorEnabled.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| descriptor | The descriptor to check |

### Returns

**bool** True if the Descriptor is applicable to the current target platform and Unity version, and if it's either enabled by default or by a Rule specified in Params. Otherwise, returns false.

### Description

Checks whether a given Descriptor is enabled for the current analysis.

The analysis for some Issues can take a long time to run, particularly in a large project. The Descriptors for such issues may declare Descriptor.IsEnabledByDefault to be false to stop them running when running Project Auditor interactively in the Editor. When running Project Auditor in a CI/CD environment it may be desirable to re-enable analysis for these Descriptors. AnalysisParams.WithAdditionalDiagnosticRules can be used to add temporary Rules to increase the Severity of a Descriptor to anything other than Severity.None in order to re-enable analysis in this context.
