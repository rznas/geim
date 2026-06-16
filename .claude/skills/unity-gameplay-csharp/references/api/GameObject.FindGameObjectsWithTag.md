<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GameObject.FindGameObjectsWithTag.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| tag | The name of the tag to search for `GameObjects` by. |

### Description

Retrieves an array of all active GameObjects tagged with the specified tag. Returns an empty array if no GameObjects have the tag.

Tags must be declared in the tag manager before using them. A `UnityException` will be thrown if the tag does not exist or if an empty string or `null` is supplied as the `tag` parameter.

```csharp
// Instantiates respawnPrefab at the location
// of all GameObjects tagged "Respawn".using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    public GameObject respawnPrefab;
    public GameObject[] respawns;
    void Start()
    {
        if (respawns == null)
            respawns = GameObject.FindGameObjectsWithTag("Respawn");        foreach (GameObject respawn in respawns)
        {
            Instantiate(respawnPrefab, respawn.transform.position, respawn.transform.rotation);
        }
    }
}
```

Another example:

```csharp
// Find the name of the closest enemyusing UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    public GameObject FindClosestEnemy()
    {
        GameObject[] gos;
        gos = GameObject.FindGameObjectsWithTag("Enemy");
        GameObject closest = null;
        float distance = Mathf.Infinity;
        Vector3 position = transform.position;
        foreach (GameObject go in gos)
        {
            Vector3 diff = go.transform.position - position;
            float curDistance = diff.sqrMagnitude;
            if (curDistance < distance)
            {
                closest = go;
                distance = curDistance;
            }
        }
        return closest;
    }
}
```

Another example, testing for empty array:

```csharp
using UnityEngine;// Search for GameObjects with a tag that is not usedpublic class Example : MonoBehaviour
{
    void Start()
    {
        GameObject[] gameObjects;
        gameObjects = GameObject.FindGameObjectsWithTag("Enemy");        if (gameObjects.Length == 0)
        {
            Debug.Log("No GameObjects are tagged with 'Enemy'");
        }
    }
}
```
