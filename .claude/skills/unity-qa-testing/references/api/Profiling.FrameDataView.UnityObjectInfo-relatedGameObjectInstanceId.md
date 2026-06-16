<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Profiling.FrameDataView.UnityObjectInfo-relatedGameObjectInstanceId.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The instance ID of a related Unity Object.

Stores the ID of a related Unity Object. You can use this to find the name of a related Unity Object if the Profiler didn't capture the name of the current Unity Object. Components might not have a defined name when a Scene loads, but the name will always evaluate to the same as the GameObject that the Component is assigned to. If the *relatedInstanceId* isn't zero, then use the FrameData.GetUnityObjectInfo function to see more information about the related Unity Object.
