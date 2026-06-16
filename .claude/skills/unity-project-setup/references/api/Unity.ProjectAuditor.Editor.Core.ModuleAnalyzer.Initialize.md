<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.ProjectAuditor.Editor.Core.ModuleAnalyzer.Initialize.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| registerDescriptor | An Action which the method can invoke to register an Issue Descriptor for later reporting |

### Description

Initializes the Analyzer

Modules and their associated Analyzers are Initialized during the process of constructing the ProjectAuditor object. The primary purpose of the Initialize method is to register Descriptors for any Issues which the Analyzer can add to the report. Descriptors must be registered before they can be used to create Issues. However, other initialization is allowed within this method if required - perhaps constructing and/or caching data structures to optimize the Analyze() methods, which may be called many times during analysis.
