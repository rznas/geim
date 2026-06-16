#!/usr/bin/env python3
"""classify_docs.py — bucket every Unity 6 doc HTML file into one of the 10
unity-* skills, so each skill can embed an exhaustive, doc-grounded references/
set for its domain.

Routes by ScriptReference class-family prefix and Manual filename keywords.
Every file lands in exactly ONE skill (first matching rule wins, order matters).
Anything unmatched goes to a shared 'unity-project-setup' (foundation/editor/
misc) bucket so NO page is dropped — and is reported so we can tighten rules.

Output: writes <outdir>/<skill>.filelist (one absolute html path per line) and
prints a coverage summary. Run from the doc 'en' dir or pass --root.
"""
import argparse
import os
import re
import sys
from collections import defaultdict

SKILLS = [
    "unity-project-setup", "unity-gameplay-csharp", "unity-physics-and-ai",
    "unity-graphics-shaders", "unity-art-pipeline", "unity-audio",
    "unity-ui-csharp", "unity-qa-testing", "unity-build-deploy",
    "unity-multiplayer",
]

# ScriptReference class-family prefixes (token before first '.' or '-') → skill.
PREFIX = {
    # physics & AI
    "Rigidbody": "unity-physics-and-ai", "Rigidbody2D": "unity-physics-and-ai",
    "ArticulationBody": "unity-physics-and-ai", "Physics": "unity-physics-and-ai",
    "Physics2D": "unity-physics-and-ai", "LowLevelPhysics": "unity-physics-and-ai",
    "LowLevelPhysics2D": "unity-physics-and-ai", "Collider": "unity-physics-and-ai",
    "Collider2D": "unity-physics-and-ai", "CharacterController": "unity-physics-and-ai",
    "AI": "unity-physics-and-ai", "NavMesh": "unity-physics-and-ai",
    "NavMeshAgent": "unity-physics-and-ai", "Joint": "unity-physics-and-ai",
    "ContactPoint": "unity-physics-and-ai", "RaycastHit": "unity-physics-and-ai",
    "WheelCollider": "unity-physics-and-ai",
    # graphics / shaders / rendering / vfx
    "Rendering": "unity-graphics-shaders", "Shader": "unity-graphics-shaders",
    "Material": "unity-graphics-shaders", "ParticleSystem": "unity-graphics-shaders",
    "VFX": "unity-graphics-shaders", "Light": "unity-graphics-shaders",
    "LightingSettings": "unity-graphics-shaders", "LightProbes": "unity-graphics-shaders",
    "LightTransport": "unity-graphics-shaders", "Camera": "unity-graphics-shaders",
    "Texture": "unity-graphics-shaders", "Texture2D": "unity-graphics-shaders",
    "RenderTexture": "unity-graphics-shaders", "Graphics": "unity-graphics-shaders",
    "Gizmos": "unity-graphics-shaders", "Color": "unity-graphics-shaders",
    "Gradient": "unity-graphics-shaders", "ComputeShader": "unity-graphics-shaders",
    "Mesh": "unity-graphics-shaders", "TrailRenderer": "unity-graphics-shaders",
    "LineRenderer": "unity-graphics-shaders", "Renderer": "unity-graphics-shaders",
    "MeshRenderer": "unity-graphics-shaders", "Skybox": "unity-graphics-shaders",
    "ReflectionProbe": "unity-graphics-shaders", "PhysicsVisualizationSettings": "unity-graphics-shaders",
    "Flare": "unity-graphics-shaders", "FlareLayer": "unity-graphics-shaders",
    "LensFlare": "unity-graphics-shaders", "Halo": "unity-graphics-shaders",
    "Cubemap": "unity-graphics-shaders", "Cubemap3D": "unity-graphics-shaders",
    # art pipeline / import / animation
    "Animations": "unity-art-pipeline", "Animator": "unity-art-pipeline",
    "Animation": "unity-art-pipeline", "AnimationClip": "unity-art-pipeline",
    "AvatarMask": "unity-art-pipeline", "ModelImporter": "unity-art-pipeline",
    "TextureImporter": "unity-art-pipeline", "TextureImporterFormat": "unity-art-pipeline",
    "AssetImporters": "unity-art-pipeline", "Sprite": "unity-art-pipeline",
    "SpriteRenderer": "unity-art-pipeline", "U2D": "unity-art-pipeline",
    "Tilemaps": "unity-art-pipeline", "Tilemap": "unity-art-pipeline",
    "Playables": "unity-art-pipeline", "Avatar": "unity-art-pipeline",
    "Motion": "unity-art-pipeline",
    # audio
    "Audio": "unity-audio", "AudioSource": "unity-audio", "AudioClip": "unity-audio",
    "AudioMixer": "unity-audio", "AudioListener": "unity-audio",
    # UI
    "UIElements": "unity-ui-csharp", "IMGUI": "unity-ui-csharp",
    "EditorGUI": "unity-ui-csharp", "EditorGUILayout": "unity-ui-csharp",
    "GUI": "unity-ui-csharp", "GUILayout": "unity-ui-csharp",
    "Canvas": "unity-ui-csharp", "RectTransform": "unity-ui-csharp",
    "TextCore": "unity-ui-csharp", "Overlays": "unity-ui-csharp",
    "Localization": "unity-ui-csharp", "Font": "unity-ui-csharp",
    # QA / testing / profiling
    "Profiling": "unity-qa-testing", "TestTools": "unity-qa-testing",
    "TestRunner": "unity-qa-testing", "Assertions": "unity-qa-testing",
    "Unity.PerformanceTesting": "unity-qa-testing",
    # build / deploy / platforms
    "Build": "unity-build-deploy", "PlayerSettings": "unity-build-deploy",
    "BuildPipeline": "unity-build-deploy", "iOS": "unity-build-deploy",
    "Android": "unity-build-deploy", "AndroidJNI": "unity-build-deploy",
    "Windows": "unity-build-deploy", "XR": "unity-build-deploy",
    "AdaptivePerformance": "unity-build-deploy", "Device": "unity-build-deploy",
    "SystemInfo": "unity-build-deploy", "Compilation": "unity-build-deploy",
    # multiplayer / networking
    "Networking": "unity-multiplayer", "Netcode": "unity-multiplayer",
    "Multiplayer": "unity-multiplayer", "Unity.Netcode": "unity-multiplayer",
    # setup / editor / core / assets (foundation — also the default bucket)
    "Compilation_": "unity-project-setup", "PackageManager": "unity-project-setup",
    "AssetDatabase": "unity-project-setup", "Search": "unity-project-setup",
    "SearchService": "unity-project-setup", "VersionControl": "unity-project-setup",
    "PrefabUtility": "unity-gameplay-csharp", "SceneManagement": "unity-gameplay-csharp",
    "SceneView": "unity-project-setup", "Progress": "unity-project-setup",
    "MPE": "unity-project-setup", "PlayerLoop": "unity-project-setup",
    "Accessibility": "unity-project-setup", "Video": "unity-build-deploy",
    # routed out of the catch-all
    "KeyCode": "unity-gameplay-csharp", "Input": "unity-gameplay-csharp",
    "Mathf": "unity-gameplay-csharp", "Vector2": "unity-gameplay-csharp",
    "Vector3": "unity-gameplay-csharp", "Vector4": "unity-gameplay-csharp",
    "Quaternion": "unity-gameplay-csharp", "Matrix4x4": "unity-gameplay-csharp",
    "Time": "unity-gameplay-csharp", "Random": "unity-gameplay-csharp",
    "Terrain": "unity-art-pipeline", "TerrainData": "unity-art-pipeline",
    "TerrainTools": "unity-art-pipeline", "Tree": "unity-art-pipeline",
    "UIE": "unity-ui-csharp", "Toolbars": "unity-ui-csharp",
    "Handles": "unity-ui-csharp", "HandleUtility": "unity-ui-csharp",
    "EditorWindow": "unity-ui-csharp", "EditorGUIUtility": "unity-ui-csharp",
    "EditorTools": "unity-ui-csharp",
    "LightEditor": "unity-graphics-shaders", "CameraEditor": "unity-graphics-shaders",
    "LightmapEditorSettings": "unity-graphics-shaders", "TextureFormat": "unity-graphics-shaders",
    "RenderSettings": "unity-graphics-shaders", "QualitySettings": "unity-graphics-shaders",
}

# 'Unity' bare-namespace + ambiguous classes → keyword on full filename.
KEYWORD = [
    (re.compile(r"netcode|networkmanager|networkbehaviour|networkobject|networkvariable|\brpc\b|\btransport\b|\brelay\b|\blobby\b", re.I), "unity-multiplayer"),
    (re.compile(r"shader|render|hlsl|urp|hdrp|lighting|gizmo|postproces|bloom|material|vfx|particle", re.I), "unity-graphics-shaders"),
    (re.compile(r"animat|sprite|tilemap|import|fbx|gltf|mesh|rig|avatar|timeline", re.I), "unity-art-pipeline"),
    (re.compile(r"audio|sound|mixer|dsp", re.I), "unity-audio"),
    (re.compile(r"\bui\b|uielement|uitoolkit|uxml|uss|canvas|recttransform|localiz|font|textmesh", re.I), "unity-ui-csharp"),
    (re.compile(r"physics|rigidbody|collider|navmesh|raycast|joint|character", re.I), "unity-physics-and-ai"),
    (re.compile(r"\btest|profil|assert|coverage", re.I), "unity-qa-testing"),
    (re.compile(r"build|playersetting|platform|android|ios|standalone|deploy|il2cpp|gradle|xcode", re.I), "unity-build-deploy"),
    (re.compile(r"monobehaviour|gameobject|component|transform|prefab|scriptableobject|coroutine|invoke|input|event|time\b|serializ|scene", re.I), "unity-gameplay-csharp"),
]

DEFAULT = "unity-project-setup"


def family(basename):
    stem = re.sub(r"\.html$", "", basename)
    return re.split(r"[.-]", stem, 1)[0]


def classify(rel):
    base = os.path.basename(rel)
    fam = family(base)
    if fam in PREFIX:
        return PREFIX[fam]
    for rx, skill in KEYWORD:
        if rx.search(base):
            return skill
    return DEFAULT


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--root", default=".", help="the doc 'en' directory")
    ap.add_argument("--outdir", required=True)
    args = ap.parse_args()
    root = args.root
    os.makedirs(args.outdir, exist_ok=True)
    buckets = defaultdict(list)
    total = 0
    for sub in ("Manual", "ScriptReference"):
        d = os.path.join(root, sub)
        if not os.path.isdir(d):
            continue
        for f in sorted(os.listdir(d)):
            if not f.endswith(".html"):
                continue
            # skip search/index stub pages
            if f in ("30_search.html",) or f.endswith("-section.html") and False:
                continue
            total += 1
            rel = os.path.join(d, f)
            buckets[classify(rel)].append(os.path.abspath(rel))
    for skill in SKILLS:
        files = buckets.get(skill, [])
        with open(os.path.join(args.outdir, skill + ".filelist"), "w") as fh:
            fh.write("\n".join(files) + ("\n" if files else ""))
    print(f"total pages: {total}")
    for skill in SKILLS:
        print(f"  {skill:24s} {len(buckets.get(skill, [])):6d}")
    assigned = sum(len(v) for v in buckets.values())
    print(f"assigned: {assigned}  (default bucket = {DEFAULT})")


if __name__ == "__main__":
    main()
