<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Build.IOrderedCallback.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Interface that provides control over callback order.

This is the base class for build callback interfaces, for example IPreprocessBuildWithContext, IPreprocessShaders, IProcessSceneWithReport, IPostprocessBuildWithContext, and IUnityLinkerProcessor.

Every class that implements these interfaces must define the callbackOrder property with a "get" accessor.

### Properties

| Property | Description |
| --- | --- |
| callbackOrder | Returns a numeric value that determines the order in which the build callback is invoked. |
