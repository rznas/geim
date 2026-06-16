<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.SearchIndexer-name.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Name of the index. Generally this name is set by a user from SearchDatabase.Settings.

```csharp
using System.Collections.Generic;
using System.Linq;
using UnityEditor;
using UnityEditor.Search;
using UnityEngine;

/// <summary>
/// The index name can be used to manage multiple indexes.
/// </summary>
static class Example_SearchIndexer_name
{
    interface IItem
    {
        string name { get; }
        string stats { get; }
    }

    struct Weapon : IItem
    {
        public string name { get; set; }
        public int power { get; private set; }

        public string stats => $"Weapon Power {power}";

        public Weapon(string name, int power)
        {
            this.name = name;
            this.power = power;
        }
    }

    struct Armor : IItem
    {
        public string name { get; set; }
        public int defense { get; private set; }

        public string stats => $"Armor Defense {defense}";

        public Armor(string name, int defense)
        {
            this.name = name;
            this.defense = defense;
        }
    }

    [MenuItem("Examples/SearchIndexer/name")]
    public static void Run()
    {
        var indexes = new[] { new SearchIndexer(nameof(Weapon), FileUtil.GetUniqueTempPathInProject()), new SearchIndexer(nameof(Armor), FileUtil.GetUniqueTempPathInProject()) };

        foreach (var i in indexes)
            i.Start();

        AddItem(indexes, new Weapon("Short Sword", 3));
        AddItem(indexes, new Weapon("Long Sword", 4));
        AddItem(indexes, new Armor("Ring", 1));
        AddItem(indexes, new Armor("Plate", 10));

        foreach (var i in indexes)
        {
            var localIndex = i;
            i.Finish(() =>
            {
                OnIndexReady(localIndex);
                localIndex.Dispose();
            });
        }
    }

    private static void AddItem(IEnumerable<SearchIndexer> indexes, IItem item)
    {
        // Find the item indexer by matching the item type to the index name
        var itemIndexer = indexes.First(e => e.name == item.GetType().Name);
        var di = itemIndexer.AddDocument(item.name, checkIfExists: true);
        itemIndexer.AddProperty("stats", item.stats, di);
    }

    private static void OnIndexReady(SearchIndexer si)
    {
        string items = "";
        for (int di = 0; di < si.documentCount; ++di)
            items += si.GetDocument(di).id + ", ";
        Debug.Log($"{si.name} index items {string.Join(", ", items)}");
    }
}
```
