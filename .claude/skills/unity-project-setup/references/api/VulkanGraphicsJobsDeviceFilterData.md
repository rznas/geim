<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/VulkanGraphicsJobsDeviceFilterData.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Set of parameters used to define Android device criteria for selecting specified Graphics Jobs modes.

Specify a list of parameters to identify an Android device or set of Android devices and a preferred Graphics Jobs mode those devices should use. Enter values for one or multiple parameters. The parameter values are processed using logical AND operation to check if the device properties match with all the specified values.

Unity ignores the filter if all parameters are empty.

### Properties

| Property | Description |
| --- | --- |
| filter | The set of parameters used to define Android device filtering criteria. |
| preferredMode | The preferred Graphics Jobs mode. |
