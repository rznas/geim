#!/usr/bin/env python3
"""classify_ue_docs.py — bucket every UE5.6/5.7 Markdown doc page into one of the
10 unreal-* skills, by its category path (the repo is organized by the same 22
doc sections the site uses). C++-primary suite.

Every .md lands in exactly ONE skill (first matching rule wins). Anything
unmatched -> unreal-project-setup (foundation/misc) and is reported.

Output: writes <outdir>/<skill>.filelist (abs md paths) + a coverage summary.
"""
import argparse
import os
import sys
from collections import defaultdict

SKILLS = [
    "unreal-project-setup", "unreal-gameplay-cpp", "unreal-blueprints",
    "unreal-physics-and-ai", "unreal-rendering-materials", "unreal-niagara-vfx",
    "unreal-animation", "unreal-audio", "unreal-ui-umg",
    "unreal-build-deploy-multiplayer",
]
DEFAULT = "unreal-project-setup"

# (path-substring, skill) — checked in order; first hit wins. Substrings match
# against the page path relative to the docs root (forward slashes).
RULES = [
    # --- niagara (before generic rendering) ---
    ("Creating_Visual_Effects", "unreal-niagara-vfx"),
    # --- blueprints ---
    ("Blueprints_Visual_Scripting", "unreal-blueprints"),
    # --- animation (anim system, control rig, sequencer, paper2d, + skeletal/hair/mutable content) ---
    ("Animating_Characters_and_Objects", "unreal-animation"),
    ("Working_with_Content/Skeletal_Meshes", "unreal-animation"),
    ("Working_with_Content/Hair_Rendering", "unreal-animation"),
    ("Working_with_Content/Mutable", "unreal-animation"),
    # --- audio ---
    ("Working_with_Audio", "unreal-audio"),
    # --- UI ---
    ("Creating_User_Interfaces", "unreal-ui-umg"),
    # --- physics & AI (specific Gameplay_Systems subdirs) ---
    ("Gameplay_Systems/Physics", "unreal-physics-and-ai"),
    ("Gameplay_Systems/Artificial_Intelligence", "unreal-physics-and-ai"),
    ("Gameplay_Systems/Vehicles", "unreal-physics-and-ai"),
    # --- build / deploy / multiplayer / testing / media ---
    ("Gameplay_Systems/Networking_and_Multiplayer", "unreal-build-deploy-multiplayer"),
    ("Gameplay_Systems/Online_Subsystems", "unreal-build-deploy-multiplayer"),
    ("Sharing_and_Releasing_Projects", "unreal-build-deploy-multiplayer"),
    ("Testing_and_Optimizing_Your_Content", "unreal-build-deploy-multiplayer"),
    ("Working_with_Media", "unreal-build-deploy-multiplayer"),
    ("Motion_Design", "unreal-build-deploy-multiplayer"),
    ("Samples_and_Tutorials", "unreal-build-deploy-multiplayer"),
    ("What's_New", "unreal-build-deploy-multiplayer"),
    # --- rendering / materials / world building ---
    ("Designing_Visuals", "unreal-rendering-materials"),
    ("Building_Virtual_Worlds", "unreal-rendering-materials"),
    # --- gameplay C++ (the remaining Gameplay_Systems + all C++ programming) ---
    ("Gameplay_Systems", "unreal-gameplay-cpp"),
    ("Gameplay_Tutorials", "unreal-gameplay-cpp"),
    ("Programming_with_C++", "unreal-gameplay-cpp"),
    # --- project setup / foundation (everything else explicit) ---
    ("Get_Started", "unreal-project-setup"),
    ("Understanding_the_Basics", "unreal-project-setup"),
    ("Setting_Up_Your_Production_Pipeline", "unreal-project-setup"),
    ("Working_with_Content", "unreal-project-setup"),   # remaining content/import pages
    ("Mobile_Development", "unreal-project-setup"),
    ("_Root", "unreal-project-setup"),
]


def classify(relpath):
    p = relpath.replace(os.sep, "/")
    for sub, skill in RULES:
        if sub in p:
            return skill
    return DEFAULT


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--root", required=True, help="UE markdown docs root")
    ap.add_argument("--outdir", required=True)
    args = ap.parse_args()
    os.makedirs(args.outdir, exist_ok=True)
    buckets = defaultdict(list)
    unmatched = []
    total = 0
    for dirpath, _dirs, files in os.walk(args.root):
        if "/.git" in dirpath.replace(os.sep, "/"):
            continue
        for f in files:
            if not f.endswith(".md"):
                continue
            total += 1
            full = os.path.join(dirpath, f)
            rel = os.path.relpath(full, args.root)
            skill = classify(rel)
            if skill == DEFAULT and not any(s in rel.replace(os.sep, "/")
                                            for s, k in RULES if k == DEFAULT):
                unmatched.append(rel)
            buckets[skill].append(os.path.abspath(full))
    for skill in SKILLS:
        with open(os.path.join(args.outdir, skill + ".filelist"), "w") as fh:
            fh.write("\n".join(buckets.get(skill, [])) + "\n")
    print(f"total md: {total}")
    for skill in SKILLS:
        print(f"  {skill:34s} {len(buckets.get(skill, [])):5d}")
    print(f"assigned: {sum(len(v) for v in buckets.values())}")
    if unmatched:
        print(f"UNMATCHED -> {DEFAULT} ({len(unmatched)}):")
        for u in unmatched[:20]:
            print("   ", u)


if __name__ == "__main__":
    main()
