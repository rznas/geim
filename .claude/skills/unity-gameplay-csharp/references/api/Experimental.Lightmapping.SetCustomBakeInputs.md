<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Experimental.Lightmapping.SetCustomBakeInputs.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| inputData | The positions (xyz) of the points for which the amount of sky visibility is calculated. The w component is an offset that will be applied to the ray originating at the position. |
| sampleCount | The number of samples on the upper hemisphere used to calculate the sky visibility. |

### Description

Set the custom bake inputs.

The custom bake calculates the amount of sky visible from the input sample points. The value is computed by shooting rays on the upper hemisphere above each point and the result is the fraction of samples that reach the sky in a direct line from each position (accounting for transparency). Each ray is offset by the value specified in the w component of the input. The result value is a single floating point number and is stored in (xyz) and will be unnormalized. The value can be normalized by dividing with the number of samples used for the custom bake. The w component of the result represent the fraction of samples that strike a backface and can be used to detect samples that lie inside geometry (i.e. they will have a high w value). The data can be used in a custom shader to account for sky visibility on objects that are difficult to bake such as trees and foliage. This way points that lie within the crown of a tree for example will become darker since fewer rays will escape to the sky.
