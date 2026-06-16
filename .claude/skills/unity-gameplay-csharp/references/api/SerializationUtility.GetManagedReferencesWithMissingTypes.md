<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SerializationUtility.GetManagedReferencesWithMissingTypes.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Returns the list of managed references that could not be deserialized because of a missing type.

This method returns the list of Managed References objects that could not be deserialized because their type is missing. This information can be used to help resolve missing type occurrences.

Additional resources: HasManagedReferencesWithMissingTypes, ManagedReferenceMissingType.

```csharp
using System.Collections.Generic;
using System.Text;
using UnityEngine;
using UnityEditor;public class GetManagedReferencesWithMissingTypesExample
{
    enum ReportFormat { Detailed, ClassList }    [MenuItem("Example/Report MonoBehaviour Missing SerializeReference Types")]
    static public void ReportMissingTypes()
    {
        ReportMissingTypesOnActiveMonoBehaviours(ReportFormat.ClassList);
    }    [MenuItem("Example/Report MonoBehaviour Missing SerializeReference Types - Detailed")]
    static public void ReportMissingTypesDetailed()
    {
        ReportMissingTypesOnActiveMonoBehaviours(ReportFormat.Detailed);
    }    static private void ReportMissingTypesOnActiveMonoBehaviours(ReportFormat reportType)
    {
        var report = new StringBuilder();        // Visit all the active MonoBehaviours
        var myMonoComponents = Object.FindObjectsOfType<MonoBehaviour>();
        foreach (var monoBehaviour in myMonoComponents)
        {
            ReportReferencesWithMissingTypesOnHost(monoBehaviour, ref report, reportType);
        }        if (report.Length == 0)
            report.Append("No missing types found");        Debug.Log(report.ToString());
    }    static private void ReportReferencesWithMissingTypesOnHost(Object host, ref StringBuilder report, ReportFormat reportType)
    {
        // Report the references that have missing types on an individual MonoBehaviour, ScriptableObject or other host
        if (!SerializationUtility.HasManagedReferencesWithMissingTypes(host))
            return;        var missingTypes = SerializationUtility.GetManagedReferencesWithMissingTypes(host);        report.Append(reportType == ReportFormat.Detailed ? "Missing references on " : "Missing classes on ");
        MonoBehaviourDescription(host, ref report);        if (reportType == ReportFormat.Detailed)
        {
            foreach (var missingType in missingTypes)
            {
                report.Append("\t").AppendFormat("{0} - {1}", missingType.referenceId, MissingClassFullName(missingType));
                if (missingType.serializedData.Length > 0)
                    report.Append("\t").AppendFormat("\n\t\t{0}", missingType.serializedData);
                report.AppendLine();
            }
        }
        else
        {
            // Only report each unique class that is missing, rather than all objects using that class
            var missingClasses = new HashSet<string>();
            foreach (var missingType in missingTypes)
            {
                missingClasses.Add(MissingClassFullName(missingType));
            }            foreach (var missingClass in missingClasses)
            {
                report.Append("\t").Append(missingClass).AppendLine();
            }
        }
    }    static private void MonoBehaviourDescription(Object host, ref StringBuilder stringBuilder)
    {
        // Identify the object that has missing types
        stringBuilder.AppendFormat("MonoBehaviour \"{0}\" (Type: {1}, Instance: {2})",
            host.name,
            host.GetType().FullName,
            host.GetInstanceID()).AppendLine();
    }    static private string MissingClassFullName(ManagedReferenceMissingType missingType)
    {
        var description = new StringBuilder();
        if (missingType.namespaceName.Length > 0)
            description.Append(missingType.namespaceName).Append(".");
        description.AppendFormat("{0}, {1}", missingType.className, missingType.assemblyName);
        return description.ToString();
    }
}
```
