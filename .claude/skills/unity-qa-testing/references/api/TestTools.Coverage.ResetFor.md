<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TestTools.Coverage.ResetFor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| method | The method. |

### Description

Resets the coverage data for the specified method.

```csharp
using UnityEngine;
using UnityEngine.TestTools;
using System.Reflection;
using System;// A simple test class to get coverage information for.
public class CoverageClass
{
    public bool CoveredMethod1()
    {
        return true;
    }    public bool CoveredMethod2()
    {
        return false;
    }
}
public class CoverageExample : MonoBehaviour
{
    void Start()
    {
        // Create an instance of the test class and call the test methods
        // to make sure the class has had some coverage.
        CoverageClass coverageClasss = new CoverageClass();
        coverageClasss.CoveredMethod1();
        coverageClasss.CoveredMethod2();        // Use reflection to get the MethodBase for CoverageClass.CoveredMethod2
        MethodBase coveredMethodBase = typeof(CoverageClass).GetMethod("CoveredMethod2");        // Reset the coverage for CoveredMethod2
        Coverage.ResetFor(coveredMethodBase);        // Now get the coverage stats for the CoveredMethod2.
        // Because coverage for CoveredMethod2 has been reset, the log
        // will show that the none of the method's sequence points
        // have been covered.
        CoveredMethodStats stats = Coverage.GetStatsFor(coveredMethodBase);        Debug.Log("Method Name: " + stats.method.ToString());
        Debug.Log("Method has " + stats.totalSequencePoints + " sequence points");
        int coveredSequencePoints = stats.totalSequencePoints - stats.uncoveredSequencePoints;
        Debug.Log("of which " + coveredSequencePoints + " were covered.");
    }
}
```
