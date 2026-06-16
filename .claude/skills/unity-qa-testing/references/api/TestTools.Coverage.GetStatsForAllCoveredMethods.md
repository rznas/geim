<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TestTools.Coverage.GetStatsForAllCoveredMethods.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**CoveredMethodStats[]** Array of coverage summaries.

### Description

Returns the coverage summary for all methods that have been called since either the Unity process was started or Coverage.ResetAll() has been called.

```csharp
using UnityEngine;
using UnityEngine.TestTools;// A simple test class to get coverage information for.
public class CoverageClass
{
    public bool CoveredMethod1()
    {
        return true;
    }    public bool CoveredMethod2()
    {
        return false;
    }
}public class CoverageExample : MonoBehaviour
{
    void Start()
    {
        // Reset coverage
        Coverage.ResetAll();        // Create an instance of the test class and call both test methods
        // to make sure the class has had some coverage.
        CoverageClass coverageClasss = new CoverageClass();
        coverageClasss.CoveredMethod1();
        coverageClasss.CoveredMethod2();        // Now get coverage statistics for all covered methods. Note that this
        // will return statistics for all methods that have executed since Coverage.ResetAll()
        // was last called, i.e. this method (CoverageExample.Start()), CoverageClass.CoveredMethod1(),
        // and CoverageClass.CoveredMethod2().
        CoveredMethodStats[] stats = Coverage.GetStatsForAllCoveredMethods();        for (int i = 0; i < stats.Length; i++)
        {
            Debug.Log("Method Name: " + stats[i].method.ToString());
            Debug.Log("Method has " + stats[i].totalSequencePoints + " sequence points");
            int coveredSequencePoints = stats[i].totalSequencePoints - stats[i].uncoveredSequencePoints;
            Debug.Log("of which " + coveredSequencePoints + " were covered.");
        }
    }
}
```
