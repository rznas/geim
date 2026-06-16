<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.ProjectAuditor.Editor.DescriptorId.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

An unique identifier for an Issue Descriptor. IDs must have exactly 3 upper case characters, followed by 4 digits.

ReportItems representing Issues (as opposed to Insights: purely informational ProjectIssues) all contain a DescriptorId. The DescriptorId is used to reference the information about a particular issue (for example, "PAC2002" is the code for "Object allocation"), and the ReportItem simply contains the file:line location in code where the allocation occurs and a "PAC2002" DescriptorId. The descriptor can generally be treated as a string, but for efficient descriptor lookups the string is converted to an int in the struct's constructor.

### Constructors

| Constructor | Description |
| --- | --- |
| DescriptorId | Constructor |

### Public Methods

| Method | Description |
| --- | --- |
| AsInt | Get the hashed integer representation of the ID |
| AsString | Get the string representation of the ID |
| Equals | Checks whether two DescriptorIDs contain the same ID. |
| GetDescriptor | Get the Descriptor which corresponds to this ID. |
| IsValid | Checks whether the ID has been successfully constructed from a correctly-formatted string. |
| OnAfterDeserialize | Unity calls this method automatically after deserialization. |
| OnBeforeSerialize | Unity calls this method automatically before serialization. |
| ToString | Returns the string representation of the ID |

### Operators

| Operator | Description |
| --- | --- |
| DescriptorId | Implicit conversion of string to DescriptorId. |
| int | Implicit conversion of DescriptorId to int. |
| string | Implicit conversion of DescriptorId to string. |
