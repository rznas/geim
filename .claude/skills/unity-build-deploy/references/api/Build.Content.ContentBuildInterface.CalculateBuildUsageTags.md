<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Build.Content.ContentBuildInterface.CalculateBuildUsageTags.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| objectIDs | Objects that will have their build usage calculated. |
| dependentObjectIDs | Objects that reference the Objects being calculated. |
| globalUsage | Lighting information used by the build. |
| usageSet | The BuildUsageTagSet where the calculated usage information will be stored. |
| usageCache | Optional cache object to use for improving performance with multiple calls to this api. |

### Description

Calculates the build usage of a set of objects.

Internal use only. See note on ContentBuildInterface.

To calculate how any given Object is being used in a build, we need two pieces of information. First, we need to know that Object's dependents, or in other words, what references that Object. For example, for a Shader, we would need to know the list Materials that reference that shader. Second, we need the combined lighting information for Scenes where the Object can be used. Using these two pieces of information, we calculate the correct usage information for an Object, and then store that information in the BuildUsageTagSet.
