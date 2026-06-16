<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.IPropertyDatabaseRecordValue.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Interface of a record value.

A record value contains the property value that is stored in the record. If the data is serializable (see PropertyDatabase.IsPersistedType), the record value contains the serialized data, otherwise it contains the C# object. To get the actual data from the record value, you need to use PropertyDatabase.GetObjectFromRecordValue or IPropertyDatabaseView.GetObjectFromRecordValue.

Additional resources: IPropertyDatabaseRecord

### Properties

| Property | Description |
| --- | --- |
| type | The type of record value. |
