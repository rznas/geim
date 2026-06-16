<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/D3D12DeviceFilterLists.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Set of parameters used to define a Windows device or group of Windows devices.

Specify a list of parameters to identify a Windows device or set of Windows devices. Enter values for one or multiple parameters. The parameter values are processed using logical AND operation to check if the device properties match with all the specified values.

 Unity ignores the filter if all parameters are empty.

### Properties

| Property | Description |
| --- | --- |
| d3D12DeviceAllowFilters | Specifies a list of D3D12DeviceFilterData parameters to allow Windows devices to always use D3D12 API when running Unity applications. This API is only available in the Unity Editor. The list is immutable at runtime. |
| d3D12DeviceDenyFilters | Specifies a list of D3D12DeviceFilterData parameters to restrict Windows devices from using D3D12 API when running Unity applications. This API is only available in the Unity Editor. The list is immutable at runtime. |
| d3D12GraphicsJobsDeviceFilters | Specifies a list of D3D12GraphicsJobsDeviceFilterData parameters to indicate which Graphics Jobs mode the Windows device should use running Unity applications with the D3D12 API. This API is only available in the Unity Editor. The list is immutable at runtime. |

### Constructors

| Constructor | Description |
| --- | --- |
| D3D12DeviceFilterLists | Create a D3D12DeviceFilterLists. |

### Public Methods

| Method | Description |
| --- | --- |
| EnsureValidOrThrow | Ensures all filters defined in D3D12DeviceFilterData.d3D12DeviceDenyFilters, D3D12DeviceFilterData.d3D12DeviceAllowFilters, and D3D12DeviceFilterData.d3D12GraphicsJobsDeviceFilters are valid. This API is only available in the Unity Editor. |

### Inherited Members

### Properties

| Property | Description |
| --- | --- |
| hideFlags | Should the object be hidden, saved with the Scene or modifiable by the user? |
| name | The name of the object. |

### Public Methods

| Method | Description |
| --- | --- |
| GetEntityId | Gets the EntityId of the object. |
| ToString | Returns the name of the object. |

### Static Methods

| Method | Description |
| --- | --- |
| Destroy | Removes a GameObject, component, or asset. |
| DestroyImmediate | Destroys the specified object immediately. Use with caution and in Edit mode only. |
| DontDestroyOnLoad | Do not destroy the target Object when loading a new Scene. |
| FindAnyObjectByType | Retrieves any active loaded object of Type type. |
| FindObjectsByType | Retrieves a list of all loaded objects of Type type. |
| Instantiate | Clones the object original and returns the clone. |
| InstantiateAsync | Captures a snapshot of the original object (that must be related to some GameObject) and returns the AsyncInstantiateOperation. |

### Operators

| Operator | Description |
| --- | --- |
| bool | Does the object exist? |
| operator != | Compares if two objects refer to a different object. |
| operator == | Compares two object references to see if they refer to the same object. |
