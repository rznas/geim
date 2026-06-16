<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ObjectChangeEvents-changesPublished.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| value | The stream of events that have been recorded since the last frame. |

### Description

Event that is raised once per frame if any undoable changes have been recorded.

All undoable changes to any loaded object are recorded in a stream of events and published once per frame. Subscribe to this event to react to any of these changes. The changes appear in the stream in the order that they were applied. Events in the stream do not necessarily map one-to-one to user interactions since user interactions may consist of multiple changes. Note that the stream passed to your callback is a temporary object owned by the engine. Do not Dispose it. Make a copy if you intend to retain it for longer than the duration of your callback.

```csharp
using UnityEditor;
using UnityEngine;[InitializeOnLoad]
public class ObjectChangeEventsExample
{
    static ObjectChangeEventsExample()
    {
        ObjectChangeEvents.changesPublished += ChangesPublished;
    }    static void ChangesPublished(ref ObjectChangeEventStream stream)
    {
        for (int i = 0; i < stream.length; ++i)
        {
            var type = stream.GetEventType(i);
            switch (type)
            {
                case ObjectChangeKind.ChangeScene:
                    stream.GetChangeSceneEvent(i, out var changeSceneEvent);
                    Debug.Log($"{type}: {changeSceneEvent.scene}");
                    break;                case ObjectChangeKind.CreateGameObjectHierarchy:
                    stream.GetCreateGameObjectHierarchyEvent(i, out var createGameObjectHierarchyEvent);
                    var newGameObject = EditorUtility.InstanceIDToObject(createGameObjectHierarchyEvent.instanceId) as GameObject;
                    Debug.Log($"{type}: {newGameObject} in scene {createGameObjectHierarchyEvent.scene}.");
                    break;                case ObjectChangeKind.ChangeGameObjectStructureHierarchy:
                    stream.GetChangeGameObjectStructureHierarchyEvent(i, out var changeGameObjectStructureHierarchy);
                    var gameObject = EditorUtility.InstanceIDToObject(changeGameObjectStructureHierarchy.instanceId) as GameObject;
                    Debug.Log($"{type}: {gameObject} in scene {changeGameObjectStructureHierarchy.scene}.");
                    break;                case ObjectChangeKind.ChangeGameObjectStructure:
                    stream.GetChangeGameObjectStructureEvent(i, out var changeGameObjectStructure);
                    var gameObjectStructure = EditorUtility.InstanceIDToObject(changeGameObjectStructure.instanceId) as GameObject;
                    Debug.Log($"{type}: {gameObjectStructure} in scene {changeGameObjectStructure.scene}.");
                    break;                case ObjectChangeKind.ChangeGameObjectParent:
                    stream.GetChangeGameObjectParentEvent(i, out var changeGameObjectParent);
                    var gameObjectChanged = EditorUtility.InstanceIDToObject(changeGameObjectParent.instanceId) as GameObject;
                    var newParentGo = EditorUtility.InstanceIDToObject(changeGameObjectParent.newParentInstanceId) as GameObject;
                    var previousParentGo = EditorUtility.InstanceIDToObject(changeGameObjectParent.previousParentInstanceId) as GameObject;
                    Debug.Log($"{type}: {gameObjectChanged} from {previousParentGo} to {newParentGo} from scene {changeGameObjectParent.previousScene} to scene {changeGameObjectParent.newScene}.");
                    break;                case ObjectChangeKind.ChangeGameObjectOrComponentProperties:
                    stream.GetChangeGameObjectOrComponentPropertiesEvent(i, out var changeGameObjectOrComponent);
                    var goOrComponent = EditorUtility.InstanceIDToObject(changeGameObjectOrComponent.instanceId);
                    if (goOrComponent is GameObject go)
                    {
                        Debug.Log($"{type}: GameObject {go} change properties in scene {changeGameObjectOrComponent.scene}.");
                    }
                    else if (goOrComponent is Component component)
                    {
                        Debug.Log($"{type}: Component {component} change properties in scene {changeGameObjectOrComponent.scene}.");
                    }
                    break;                case ObjectChangeKind.DestroyGameObjectHierarchy:
                    stream.GetDestroyGameObjectHierarchyEvent(i, out var destroyGameObjectHierarchyEvent);
                    // The destroyed GameObject can not be converted with EditorUtility.InstanceIDToObject as it has already been destroyed.
                    var destroyParentGo = EditorUtility.InstanceIDToObject(destroyGameObjectHierarchyEvent.parentInstanceId) as GameObject;
                    Debug.Log($"{type}: {destroyGameObjectHierarchyEvent.instanceId} with parent {destroyParentGo} in scene {destroyGameObjectHierarchyEvent.scene}.");
                    break;                case ObjectChangeKind.CreateAssetObject:
                    stream.GetCreateAssetObjectEvent(i, out var createAssetObjectEvent);
                    var createdAsset = EditorUtility.InstanceIDToObject(createAssetObjectEvent.instanceId);
                    var createdAssetPath = AssetDatabase.GUIDToAssetPath(createAssetObjectEvent.guid);
                    Debug.Log($"{type}: {createdAsset} at {createdAssetPath} in scene {createAssetObjectEvent.scene}.");
                    break;                case ObjectChangeKind.DestroyAssetObject:
                    stream.GetDestroyAssetObjectEvent(i, out var destroyAssetObjectEvent);
                    // The destroyed asset can not be converted with EditorUtility.InstanceIDToObject as it has already been destroyed.
                    Debug.Log($"{type}: Instance Id {destroyAssetObjectEvent.instanceId} with Guid {destroyAssetObjectEvent.guid} in scene {destroyAssetObjectEvent.scene}.");
                    break;                case ObjectChangeKind.ChangeAssetObjectProperties:
                    stream.GetChangeAssetObjectPropertiesEvent(i, out var changeAssetObjectPropertiesEvent);
                    var changeAsset = EditorUtility.InstanceIDToObject(changeAssetObjectPropertiesEvent.instanceId);
                    var changeAssetPath = AssetDatabase.GUIDToAssetPath(changeAssetObjectPropertiesEvent.guid);
                    Debug.Log($"{type}: {changeAsset} at {changeAssetPath} in scene {changeAssetObjectPropertiesEvent.scene}.");
                    break;                case ObjectChangeKind.UpdatePrefabInstances:
                    stream.GetUpdatePrefabInstancesEvent(i, out var updatePrefabInstancesEvent);
                    string s = "";
                    s += $"{type}: scene {updatePrefabInstancesEvent.scene}. Instances ({updatePrefabInstancesEvent.instanceIds.Length}):\n";
                    foreach (var prefabId in updatePrefabInstancesEvent.instanceIds)
                    {
                        s += EditorUtility.InstanceIDToObject(prefabId).ToString() + "\n";
                    }
                    Debug.Log(s);
                    break;
            }
        }
    }
}
```
