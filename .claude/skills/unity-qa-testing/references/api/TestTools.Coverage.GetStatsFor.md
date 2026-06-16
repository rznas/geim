<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TestTools.Coverage.GetStatsFor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| method | The method to get coverage statistics for. |

### Returns

**CoveredMethodStats** Coverage summary.

### Description

Returns the coverage summary for the specified method. See CoveredMethodStats for more information about the coverage statistics returned by this method.

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
        // And get the coverage stats for the method.
        CoveredMethodStats stats = Coverage.GetStatsFor(coveredMethodBase);        Debug.Log("CoveredMethod has " + stats.totalSequencePoints + " sequence points");
        int coveredSequencePoints = stats.totalSequencePoints - stats.uncoveredSequencePoints;
        Debug.Log("of which " + coveredSequencePoints + " were covered.");
    }
}
```

### Parameters

| Parameter | Description |
| --- | --- |
| methods | The array of methods. |

### Returns

**CoveredMethodStats[]** Array of coverage summaries.

### Description

Returns an array of coverage summaries for the specified array of methods.

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
}public class CoverageExample : MonoBehaviour
{
    void Start()
    {
        // Create an instance of the test class and call the test methods
        // to make sure the class has had some coverage.
        CoverageClass coverageClasss = new CoverageClass();
        coverageClasss.CoveredMethod1();
        coverageClasss.CoveredMethod2();        // Get the Type of the CoverageClass
        Type coverageClassType = typeof(CoverageClass);        // Use reflection to get an array of MethodBases for the two methods
        // in CoverageClass.
        MethodBase[] coveredMethodBaseArray =
        {
            coverageClassType.GetMethod("CoveredMethod1"),
            coverageClassType.GetMethod("CoveredMethod2")
        };        // And get the coverage stats for the methods.
        CoveredMethodStats[] stats = Coverage.GetStatsFor(coveredMethodBaseArray);        for (int i = 0; i < stats.Length; i++)
        {
            Debug.Log("Method Name: " + stats[i].method.ToString());
            Debug.Log("Method has " + stats[i].totalSequencePoints + " sequence points");
            int coveredSequencePoints = stats[i].totalSequencePoints - stats[i].uncoveredSequencePoints;
            Debug.Log("of which " + coveredSequencePoints + " were covered.");
        }
    }
}
```

### Parameters

| Parameter | Description |
| --- | --- |
| type | The type. |

### Returns

**CoveredMethodStats[]** Array of coverage summaries.

### Description

Returns an array of coverage summaries for the specified type.

```csharp
using UnityEngine;
using UnityEngine.TestTools;
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
}public class CoverageExample : MonoBehaviour
{
    void Start()
    {
        // Create an instance of the test class and call the test methods
        // to make sure the class has had some coverage.
        CoverageClass coverageClasss = new CoverageClass();
        coverageClasss.CoveredMethod1();
        coverageClasss.CoveredMethod2();        // Get the Type of the CoverageClass
        Type coverageClassType = typeof(CoverageClass);
        // And get the coverage stats for all of the methods of the type.
        // Note that this will include class's default constructor.
        CoveredMethodStats[] stats = Coverage.GetStatsFor(coverageClassType);        for (int i = 0; i < stats.Length; i++)
        {
            Debug.Log("Method Name: " + stats[i].method.ToString());
            Debug.Log("Method has " + stats[i].totalSequencePoints + " sequence points");
            int coveredSequencePoints = stats[i].totalSequencePoints - stats[i].uncoveredSequencePoints;
            Debug.Log("of which " + coveredSequencePoints + " were covered.");
        }
    }
}
```
