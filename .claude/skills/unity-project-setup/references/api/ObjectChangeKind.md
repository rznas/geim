<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ObjectChangeKind.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

This enumeration describes the different kind of changes that can be tracked in an ObjectChangeEventStream. Each event has a corresponding type in ObjectChangeEvents.

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

### Properties

| Property | Description |
| --- | --- |
| None | Indicates an uninitialized value. |
| ChangeScene | A change of this type indicates that an open scene has been changed ("dirtied") without any more specific information available. This happens for example when EditorSceneManager.MarkSceneDirty is used. |
| CreateGameObjectHierarchy | A change of this type indicates that a GameObject has been created, possibly with additional objects below it in the hierarchy. This happens for example when Undo.RegisterCreatedObjectUndo is used with a GameObject. |
| ChangeGameObjectStructureHierarchy | A change of this type indicates that the structure of a GameObject has changed and any GameObject in the hierarchy below it might have changed. This happens for example when Undo.RegisterFullObjectHierarchyUndo is used. |
| ChangeGameObjectStructure | A change of this type indicates that the structure of a GameObject has changed. This happens when a component is added to or removed from the GameObject using Undo.AddComponent or Undo.DestroyObjectImmediate. |
| ChangeGameObjectParent | A change of this type indicates that the parent of a GameObject has changed. This happens when Undo.SetTransformParent or SceneManager.MoveGameObjectToScene is used. |
| ChangeGameObjectOrComponentProperties | A change of this type indicates that a property of a GameObject or Component has changed. This happens for example when Undo.RecordObject is used with an instance of a Component. |
| DestroyGameObjectHierarchy | A change of this type indicates that a GameObject and the entire hierarchy below it has been destroyed. This happens for example when Undo.DestroyObjectImmediate is used with an GameObject. |
| CreateAssetObject | A change of this type indicates that an asset object has been created. This happens for example when Undo.RegisterCreatedObjectUndo is used with an instance of an asset (e.g. Texture). Note that this only covers creation of asset objects in memory and not creation of new assets in the project on disk. |
| DestroyAssetObject | A change of this type indicates that an asset object has been destroyed. This happens for example when Undo.DestroyObjectImmediate is used with an instance of an asset (e.g. Texture). Note that this only covers destruction of asset objects in memory and not deletion of assets in the project on disk. |
| ChangeAssetObjectProperties | A change of this type indicates that a property of an asset object in memory has changed. This happens for example when Undo.RecordObject is used with an instance of an asset (e.g. Texture). Note that this only covers changes to asset objects in memory and not changes to assets in the project on disk. |
| UpdatePrefabInstances | A change of this type indicates that prefab instances in an open scene have been updated due to a change to the source prefab. |
| ChangeChildrenOrder | A change of this type indicates that a child has been reordered in the hierarchy under the same parent. This happens when Undo.RegisterChildrenOrderUndo is called or when reordering a child in the hierarchy under the same parent. |
| ChangeRootOrder | A change of this type indicates that a GameObject placed at the scene root has been reordered in the hierarchy. This happens when Undo.SetSiblingIndex is called or when reordering such a GameObject in the hierarchy under the same scene. |
