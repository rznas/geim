<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TestTools.Coverage.GetSequencePointsFor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| method | The method to get the sequence points for. |

### Returns

**CoveredSequencePoint[]** Array of sequence points.

### Description

Returns the coverage sequence points for the method you specify. See CoveredSequencePoint for more information about the coverage data this method returns.

```csharp
using UnityEngine;
using UnityEngine.TestTools;
using System.Reflection;public class CoverageClass
{
    // A simple test method to get coverage information from.
    // If the method is called with incrementValue set to true,
    // the method will have complete coverage. If incrementValue
    // is false, the coverage will be incomplete.
    public int CoveredMethod(bool incrementValue)
    {
        int value = 0;
        if (incrementValue)
        {
            value++;
        }        return value;
    }
}public class CoverageExample : MonoBehaviour
{
    void Start()
    {
        // Create an instance of the test class and call the test method
        // to make sure the method has had some coverage. Note in this example,
        // we're passing false into the method to make sure the coverage
        // is incomplete.
        CoverageClass coverageClasss = new CoverageClass();
        int value = coverageClasss.CoveredMethod(false);        // Use reflection to get the MethodBase for CoverageClass.CoveredMethod
        MethodBase coveredMethodBase = typeof(CoverageClass).GetMethod("CoveredMethod");
        // And get the sequence points for the method.
        CoveredSequencePoint[] sequencePoints = Coverage.GetSequencePointsFor(coveredMethodBase);        for (int i = 0; i < sequencePoints.Length; i++)
        {
            Debug.Log("File: " + sequencePoints[i].filename);
            Debug.Log("Method Name: " + sequencePoints[i].method.ToString());
            Debug.Log("Line: " + sequencePoints[i].line + " Column: " + sequencePoints[i].column);
            Debug.Log(" IL Offset: " + sequencePoints[i].ilOffset + " Hit Count: " + sequencePoints[i].hitCount);
        }
    }
}
```
