<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Build.IUnityLinkerProcessor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Implement this interface to receive callbacks related to the running of UnityLinker.

Configure the managed code stripping of a build with this interface. For more information about build callbacks, refer to Use build callbacks. Additional resources: BuildPlayerProcessor, IFilterBuildAssemblies, IPostBuildPlayerScriptDLLs, IPreprocessBuildWithContext

### Public Methods

| Method | Description |
| --- | --- |
| GenerateAdditionalLinkXmlFile | Generates additional link.xml files for preserving additional types and their members. |
