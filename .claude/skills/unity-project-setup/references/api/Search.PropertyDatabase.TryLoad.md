<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.PropertyDatabase.TryLoad.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| recordKey | A record key. |
| value | The property value. |

### Returns

**bool** True if the record is found and is valid, false otherwise.

### Description

Loads a single property, already deseriazed into an object.

```csharp
// Load the value already deserialized.
var colorRecordKey = PropertyDatabase.CreateRecordKey("path/to/my/asset", "m_Color");
if (!propertyDatabase.TryLoad(colorRecordKey, out object colorObject))
    Assert.Fail("Failed to load color property.");
var color = (Color)colorObject;
Assert.AreEqual(new Color(1, 0, 1), color);
```

Additional resources: PropertyDatabase.CreateRecordKey.

### Parameters

| Parameter | Description |
| --- | --- |
| recordKey | A record key. |
| value | The property record. |

### Returns

**bool** True if the record is found and is valid, false otherwise.

### Description

Loads a single property, still contained within a record.

This method doesn't deserialize the value. You have to deserialize it yourself by calling PropertyDatabase.GetObjectFromRecordValue.

```csharp
// Load the record value to do a deserialization at the appropriate time.
var sizeRecordKey = PropertyDatabase.CreateRecordKey("path/to/my/asset", "m_Size");
if (!propertyDatabase.TryLoad(sizeRecordKey, out IPropertyDatabaseRecordValue sizeRecordValue))
    Assert.Fail("Failed to load size property.");
var size = propertyDatabase.GetValueFromRecord<int>(sizeRecordValue);
Assert.AreEqual(42, size);
```

Additional resources: PropertyDatabase.CreateRecordKey.

### Parameters

| Parameter | Description |
| --- | --- |
| documentKey | A document key. |
| data | The document property values. |

### Returns

**bool** True if the record is found and is valid, false otherwise.

### Description

Loads all the properties of a document, already deseriazed into objects.

```csharp
// Load all values not associated with a document, already deserialized.
var nullDocumentKey = PropertyDatabase.CreateDocumentKey(null);
if (!propertyDatabase.TryLoad(nullDocumentKey, out IEnumerable<object> noDocumentProperties))
    Assert.Fail("Failed to load properties with no documents.");
Assert.IsNotEmpty(noDocumentProperties);
Assert.AreEqual("myDocs_", noDocumentProperties.First());
```

Additional resources: PropertyDatabase.CreateDocumentKey.

### Parameters

| Parameter | Description |
| --- | --- |
| documentKey | A document key. |
| records | The document property records. |

### Returns

**bool** True if the record is found and is valid, false otherwise.

### Description

Loads all the properties of a document, still contained within records.

This method doesn't deserialize the values. You have to deserialize them yourself by calling PropertyDatabase.GetObjectFromRecordValue.

```csharp
// Load all values associated with a document, not deserialized.
var myAssetDocumentKey = PropertyDatabase.CreateDocumentKey("path/to/my/asset");
if (!propertyDatabase.TryLoad(myAssetDocumentKey, out IEnumerable<IPropertyDatabaseRecord> myDocumentRecords))
    Assert.Fail("Failed to load records for my asset document.");
var deserializedValues = new Dictionary<PropertyDatabaseRecordKey, object>();
foreach (var myDocumentRecord in myDocumentRecords)
{
    var value = propertyDatabase.GetValueFromRecord<object>(myDocumentRecord.value);
    deserializedValues.Add(myDocumentRecord.key, value);
}
Assert.AreEqual(5, deserializedValues.Count);
```

Additional resources: PropertyDatabase.CreateDocumentKey.
