<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UnityEngine.PropertiesModule.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Interfaces and utilities to describe and visit data containers.

### Classes

| Class | Description |
| --- | --- |
| ArrayPropertyBag<T0> | An IPropertyBag_1 implementation for a built in array of TElement. |
| ConcreteTypeVisitor | Base class to implement a visitor responsible for getting an object's concrete type as a generic. |
| ContainerPropertyBag<T0> | Base class for implementing a static property bag for a specified container type. This is an abstract class. |
| CreatePropertyAttribute | Use this attribute to have a property generated for the member. |
| DelegateProperty<T0,T1> | Represents a value property. |
| DictionaryPropertyBag<T0,T1> | An IPropertyBag_1 implementation for a Dictionary_2 type. |
| DontCreatePropertyAttribute | Use this attribute to prevent have a property from being automatically generated on a public field. |
| GeneratePropertyBagAttribute | Use this attribute to have the source generator generate property bags for a given type. |
| GeneratePropertyBagsForAssemblyAttribute | Use this attribute to enable the source generator to run on this assembly. |
| GeneratePropertyBagsForTypeAttribute | Use this attribute to have the source generator generate a property bag for a given type. This attribute works for the specified type ONLY, it does NOT include derived types. |
| GeneratePropertyBagsForTypesQualifiedWithAttribute | Use this attribute to have the properties source generator generate property bags for types implementing the specified interface. |
| HashSetPropertyBag<T0> | An IPropertyBag_1 implementation for a HashSet_1 type. |
| IndexedCollectionPropertyBag<T0,T1> | An IPropertyBag_1 implementation for a generic collection of elements which can be accessed by index. This is based on the IList_1 interface. |
| InvalidContainerTypeException | The exception that is thrown when trying to visit an invalid container type. |
| InvalidPathException | The exception that is thrown when trying to resolve an invalid path. |
| KeyValueCollectionPropertyBag<T0,T1,T2> | An IPropertyBag_1 implementation for a generic collection of key/value pairs using the IDictionary_2 interface. |
| KeyValuePairPropertyBag<T0,T1> | A IPropertyBag_1 implementation for a generic key/value pair. |
| ListPropertyBag<T0> | A IPropertyBag_1 implementation for a List_1 type. |
| MissingPropertyBagException | The exception that is thrown when trying to visit a container with no property bag. |
| PathVisitor | Helper visitor to visit a single property using a specified PropertyPath. |
| Property<T0,T1> | Base class for implementing properties. This is an abstract class. |
| PropertyBag | The PropertyBag class provides access to registered property bag instances. |
| PropertyBag<T0> | Base class for implementing a property bag for a specified container type. This is an abstract class. |
| PropertyContainer | The PropertyContainer class is used as the entry point to operate on data containers using properties. |
| PropertyVisitor | Base class for implementing algorithms using properties. This is an abstract class. For more information on how to implement a property visitor by deriving from this class, including an example, refer to Create a property visitor with the PropertyVisitor class |
| ReflectedMemberProperty<T0,T1> | A ReflectedMemberProperty_2 provides strongly typed access to an underlying FieldInfo or PropertyInfo object. |
| SetPropertyBagBase<T0,T1> | A IPropertyBag_1 implementation for a generic set of elements using the ISet_1 interface. |
| TypeConversion | Helper class to handle type conversion during properties API calls. |
| TypeTraits | Helper class to avoid paying the cost of runtime type lookups. |
| TypeTraits<T0> | Helper class to avoid paying the cost of runtime type lookups. This is also used to abstract underlying type info in the runtime (e.g. RuntimeTypeHandle vs StaticTypeReg) |
| TypeUtility | Utility class around System.Type. |

### Structs

| Struct | Description |
| --- | --- |
| AttributesScope | Scope for using a given set of attributes. |
| ExcludeContext<T0,T1> | Context object used during visitation to determine if a property should be visited or not. |
| ExcludeContext<T0> | Context object used during visitation to determine if a property should be visited or not. |
| PropertyCollection<T0> | The PropertyCollection_1 struct provides enumerable access to all IProperty_1 for a given PropertyBag_1. |
| PropertyPath | A PropertyPath is used to store a reference to a single property within a tree. |
| PropertyPathPart | A PropertyPathPart represents a single element of the path. |
| VisitContext<T0,T1> | Context object used during visitation when a IProperty_1 is visited. |
| VisitContext<T0> | Context object used during visitation when a IProperty_1 is visited. |
| VisitParameters | Custom parameters to use for visitation. |

### Enumerations

| Enumeration | Description |
| --- | --- |
| InstantiationKind | Describes how a new instance is created. |
| PropertyPathPartKind | A PropertyPathPartKind specifies a type for a PropertyPathPart. |
| TypeGenerationOptions | A set of options to customize the behaviour of the code generator. |
| VisitExceptionKind | Flags used to specify a set of exceptions. |
| VisitReturnCode | Internal return code used during path visitation. |
