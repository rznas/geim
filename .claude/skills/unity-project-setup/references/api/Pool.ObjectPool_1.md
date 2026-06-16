<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Pool.ObjectPool_1.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A stack-based pool of object instances of type T, which implements the IObjectPool interface.

Use this class to create a pool of object instances that can be reused to reduce the overhead of instantiating and destroying objects frequently.

 The constructor takes delegates as arguments to allow you to define the behavior of the pool when an item is created, taken from the pool, returned to the pool, or destroyed. You can also specify the default capacity of the pool, the maximum size the pool can grow to, and whether to perform collection checks when returning an item to the pool to catch double-release errors.

 Use ObjectPool<T0>.Get to get an instance from the pool. If the pool is empty then a new instance is created using the method passed as the `createFunc` parameter to the constructor. Use ObjectPool<T0>.Release to return an instance back to the pool. If the pool has reached its maximum size then the instance is destroyed using the method passed as the `actionOnDestroy` parameter to the constructor.

 **Important**: `ObjectPool<T>` stores its pooled object instances in a stack-like collection, so don't assume physical contiguity of the objects in memory. `ObjectPool<T>` is not safe to call from background threads.

 For more information on the concept and application of object pooling, refer to Pooling and reusing objects in the manual.

Additional resources: IObjectPool<T0>

```csharp
using UnityEngine;
using UnityEngine.Pool;public class SimplePoolExample : MonoBehaviour
{
    // The pool holds plain GameObjects (you can swap this for any component type).
    private ObjectPool<GameObject> pool;    void Awake()
    {
        // Create a pool with the four core callbacks.
        pool = new ObjectPool<GameObject>(
            createFunc: CreateItem,
            actionOnGet: OnGet,
            actionOnRelease: OnRelease,
            actionOnDestroy: OnDestroyItem,
            collectionCheck: true,   // helps catch double-release mistakes
            defaultCapacity: 10,
            maxSize: 50
        );
    }    void Update()
    {
        // Press Space to spawn one pooled object for 1 second.
        if (Input.GetKeyDown(KeyCode.Space))
        {
            GameObject pooledObject = pool.Get();
            pooledObject.transform.position = Random.insideUnitSphere * 5f;            // Return it to the pool after a short delay.
            StartCoroutine(ReturnAfter(pooledObject, 1f));
        }
    }    // Creates a new pooled GameObject the first time (and whenever the pool needs more).
    private GameObject CreateItem()
    {
        GameObject pooledObject = GameObject.CreatePrimitive(PrimitiveType.Cube);
        pooledObject.name = "PooledCube";
        pooledObject.SetActive(false);
        return pooledObject;
    }    // Called when an item is taken from the pool.
    private void OnGet(GameObject pooledObject)
    {
        pooledObject.SetActive(true);
    }    // Called when an item is returned to the pool.
    private void OnRelease(GameObject pooledObject)
    {
        pooledObject.SetActive(false);
    }    // Called when the pool decides to destroy an item (e.g., above max size).
    private void OnDestroyItem(GameObject pooledObject)
    {
        Destroy(pooledObject);
    }    private System.Collections.IEnumerator ReturnAfter(GameObject pooledObject, float seconds)
    {
        yield return new WaitForSeconds(seconds);
        // Give it back to the pool.
        pool.Release(pooledObject);
    }
}
```

### Properties

| Property | Description |
| --- | --- |
| CountActive | Number of objects that have been created by the pool but are currently in use and have not yet been returned. |
| CountAll | The total number of active and inactive objects. |
| CountInactive | Number of objects that are currently available in the pool. |

### Constructors

| Constructor | Description |
| --- | --- |
| ObjectPool_1 | Creates a new ObjectPool instance. |

### Public Methods

| Method | Description |
| --- | --- |
| Clear | Removes all pooled items and invokes the pool's action on destroy callback for each item in the pool. |
| Dispose | Removes all pooled items and invokes the pool's action on destroy callback for each item in the pool. |
| Get | Get an instance from the pool. If the pool is empty then a new instance is created. |
| Release | Returns the instance back to the pool. If the pool has reached maximum size, the returned instance is destroyed. |
