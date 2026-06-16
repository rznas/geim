<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/XR.InputDevice.TryGetFeatureValue.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| usage | Usage that describes the feature to retrieve. |
| time | A DateTime struct with the local time at which to query for data. |
| value | A variable of the appropriate type to receive the information about the feature. |

### Returns

**bool** True if the feature information is retrieved; otherwise false.

### Description

Retrieves information about the input feature specified by the Usage parameter. Those functions which take a time parameter allow querying for that feature at a particular point in time

See XR.InputDevice.CommonUsages for valid usages that can be used to retrieve input values. Note: not all of these features will be available on all devices. If a feature is not available this function will return false.
