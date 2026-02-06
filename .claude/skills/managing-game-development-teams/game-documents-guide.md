# Game Documents Guide

## The Purpose of Documents

Game documents have exactly two purposes:

### 1. Memory
Humans have terrible memories. A game design will be full of thousands of important decisions. When brilliant ideas are fresh in your mind, they feel impossible to forget. But two weeks and two hundred design decisions later, even the most ingenious solutions are easily forgotten.

**Recording decisions saves you from solving the same problems repeatedly.**

### 2. Communication
Even with a perfect memory, design decisions must be communicated to many people on the team. Documents are an effective way to do that and enable dialog.

**As soon as a decision is on paper, someone will find a problem with it or come up with a way to make it better.**

---

## The Myth of the Game Design Document

### What Doesn't Exist

**THE MAGIC TEMPLATE DOES NOT EXIST!**

It never has existed, and it never will exist. Anyone who tells you otherwise is a fool or a liar.

### The Trouble with GDDs (Jason VandenBerghe)

> "The trouble with GDDs is that they are literally out of date the moment you write them. Design documents are an expression of your current theories about what will make your game good… but until you see those theories in practice, you cannot know. Unfortunately, it is in our nature to treat official documents as though they were specifications, or scripts, or blueprints. They are not - they are theories."

### The Real Problem

"Evil abounds when you have a document that:
- Some people think is a plan
- Some people think is a theory
- Some people think is a blueprint"

**Small teams** can overcome these inequities through lots of interpersonal communication.
**Larger teams** will have a much harder time.

### The Solution

Documents are different for every game and different for every team. To understand the correct structure of documents for your game, you must first understand their purpose (memory and communication).

---

## Six Types of Document Creators

Different groups need to remember and communicate different things, and each generates its own special kinds of documents:

1. **Design** team
2. **Engineering** team
3. **Art** team
4. **Production** team
5. **Writing** team
6. **Players**

---

## Design Documents (3 Types)

### 1. Game Design Overview

**Purpose:** High-level understanding of what the game is and who it's for

**Primary audience:** Management, external stakeholders, whole team for big picture

**Length:** A few pages (or even one page)

**Key content:**
- Core concept
- Target audience
- Essential experience
- Key mechanics
- Unique selling points

**Best practice from Stone Librande:**
Every game should be explainable in a **diagram on a poster** that explains how the whole game fits together—the "one-page design."

**When to create:** Very early, often for securing funding or team alignment

**Update frequency:** Rarely changes once approved (captures the vision)

---

### 2. Detailed Design Document

**Purpose:** Describe all game mechanics and interfaces in great detail

**Primary audience:**
- Designers (to remember detailed ideas)
- Engineers (who code them)
- Artists (who visualize them)

**Structure:** Usually a terrible mess with just enough detail to spark discussion and keep important ideas from being forgotten

**Best practice from Rich Marmura:**
"I tailor them to the team I am working with. While the GDD is a place to organize my thoughts, it must also be a place where team members go for information and clarity... Just as no two teams or games are ever the same, no two GDDs should ever be the same."

**Key principles:**
- **Many small documents > one giant document**
- Detail the various subsystems separately
- Each subsystem can be owned and maintained by relevant team members

**Lifecycle:**
- Crucial at beginning of project
- Often abandoned halfway through (game itself becomes reference)
- By that point, important details are either in the game or exchanged through informal means (emails, short notes)

**Update frequency:** Frequent early, then informal as game solidifies

---

### 3. Story Overview

**Purpose:** Communicate important settings, characters, and actions to writers

**Primary audience:** Professional writers (often contracted and remote)

**Key content:**
- Important settings
- Key characters
- Major actions/plot points
- Tone and themes

**Typical workflow:**
1. Designers create story overview
2. Writers respond with interesting new ideas
3. Ideas often change the whole game design
4. Iterative dialog continues

**When to create:** Once core game concept is established and narrative is important

**Update frequency:** Iterates with writers until narrative is locked

---

## Engineering Documents (3 Types)

### 4. Technical Design Document

**Purpose:** Record details of complex technical systems (not game mechanics, but technical infrastructure)

**Primary audience:** Engineering team

**Key content:**
- System architecture
- How things appear on screen
- Network data transmission
- Technical implementation details

**Unique aspect:** Usually no one outside engineering team cares about these details

**Usefulness:** Essential for onboarding new engineers mid-project

**Lifecycle:** Like design docs, rare to stay up-to-date past halfway through project

**Note:** Writing the document is often essential to architecting systems and getting coding underway, even if it becomes outdated later.

---

### 5. Pipeline Overview

**Purpose:** Explain integration requirements for art assets

**Primary audience:** Art team

**Key content:**
- Special "do's and don'ts"
- Format requirements
- Naming conventions
- Size/polygon limits
- How to export/import
- Common pitfalls

**Best practices:**
- Generated by engineers explicitly for artists
- **The simpler, the better**
- Include visual examples
- Update when pipeline changes

---

### 6. System Limitations

**Purpose:** Make clear limits that should not be crossed

**Primary audience:** Designers and artists

**Why it's needed:** Designers and artists are often completely unaware of what is/isn't possible on target system

**Key content:**
- Number of polygons on screen at once
- Number of update messages per second
- Number of simultaneous explosions
- Memory limits
- Performance budgets

**Challenges:**
- Information is often not cut and dried
- Limits may be soft (performance degrades) vs hard (crashes)

**Benefits:**
- Saves time later ("We can't do that? But we already designed it!")
- Fosters discussions about creative solutions to get past limits

**Update frequency:** Early establishment, refined through development

---

## Art Documents (2 Types)

### 7. Art Bible

**Purpose:** Maintain visual consistency when several artists work together

**Primary audience:** Art team

**Key content:**
- Character sheets
- Environment examples
- Color usage guidelines
- Interface examples
- Style definitions
- Any element that defines the look

**Why it matters:** Without guidelines, different artists create inconsistent looks

**Update frequency:** Established early, expanded as new visual elements are defined

---

### 8. Concept Art Overview

**Purpose:** Show what the game will look like before it's built

**Primary audience:** Many people on team need to understand visual direction

**Key content:**
- Concept art images
- Context explaining how art fits into design
- Visual representation of key moments/features

**Typical integration:**
Art alone doesn't tell the full story, so art team often works with design team to create images that show:
- How things will look
- How they'll feel in context of gameplay

**Where it appears:**
- Game design overview
- Detailed design document
- Sometimes even technical documents (to illustrate what technology must achieve)

**Update frequency:** Early and iterative during concept phase, stabilizes during production

---

## Production Documents (3 Types)

### 9. Game Budget

**Purpose:** Estimate cost to develop the game

**Primary audience:** Management, publishers, funders

**Format:** Usually a spreadsheet

**Key content:**
- All work that needs to be done
- Time estimates for each task
- Costs (time translates into dollars)
- Resources needed

**Challenge:** Created before team completely understands what they're building

**Development:**
- Producer/PM can't create alone
- Works closely with every part of team for accurate estimates

**Importance:** Often one of first documents created (used to secure funding)

**Best practice:** Good project manager continues to evolve this throughout the project to ensure project doesn't exceed allocated budget

**Update frequency:** Initial version for funding, then ongoing tracking

---

### 10. Asset Tracker

**Purpose:** Keep track of what has been created and its state

**Format:** Simple spreadsheet or formal asset management system

**What to track:**
- Code files
- Game levels
- Art assets
- Sound and music
- Design documents

**Critical aspect: Approvals**
Have the right people approved each asset?

**Update frequency:** Continuous throughout project

---

### 11. Project Schedule

**Purpose:** Plan what needs to be accomplished and when

**Primary audience:** Whole team

**Key content:**
- All tasks that need to be accomplished
- How long each will take
- When each task must be completed
- Who will do them

**Important considerations:**
- Single person shouldn't do more than 40 hours per week
- Some tasks can't start until others are completed (dependencies)
- Surprises and unexpected changes happen constantly

**Format:** Spreadsheet or formal project management software

**Best practice:** Can change on weekly basis at minimum

**Reality on well-run projects:** This document will be most frequently updated

**Workload:** Keeping this up to date can easily be full-time job on medium-sized or larger game

**Update frequency:** Weekly or more frequently

---

## Writing Documents (3 Types)

### 12. Story Bible

**Purpose:** Establish what is and isn't possible in the story world

**Primary audience:** Everyone on the project who might affect story

**Why it's needed:**
- Writers don't determine story entirely by themselves
- Engine programmers might propose story changes (technical challenges)
- Artists might have visual ideas for new story parts
- Game designers might have gameplay ideas requiring story changes

**Key content:**
- Story world rules
- What's possible/impossible in this universe
- Canon elements
- Character backgrounds
- World history
- Tone and themes

**Benefit:** Makes it easier for everyone on team to contribute story ideas

**Result:** Stronger story world that's well-integrated with art, technology, and gameplay

---

### 13. Script

**Purpose:** Provide all NPC dialog

**Primary audience:** Voice actors, designers, engineers, localization team

**Format:** Dialog script

**Critical review:** Game designers must review all dialog

**Why review matters:** All too easy for line of dialog to be inconsistent with gameplay rule

**Integration:** Often separate from or an appendix to detailed design document

**Update frequency:** Written during production, locked before voice recording

---

### 14. Game Tutorial and Manual

**Purpose:** Teach players how to play

**Forms:**
- In-game tutorials
- Web pages
- Printed manuals
- Video tutorials

**Why it's critical:** If players can't understand your game, how can they enjoy it?

**Challenge:** Game design details continue to change until last minute of development

**Important responsibility:** Someone must continually check this text for accuracy with game implementation

**Best practice:** Create from refined playtesting introduction speeches (see [playtesting-framework.md](playtesting-framework.md))

---

## Player Documents (1 Type)

### 15. Game Walk-Through

**Purpose:** Guide players through game

**Creators:** Players themselves (not developers)

**Format:** Player-created guides posted online

**Value to developers:**
Studying what players write about your game reveals in detail:
- What players like
- What players dislike
- Which parts are too hard
- Which are too easy
- What strategies they use
- What confuses them

**Limitation:** By the time walk-through is written, often too late to change your game

**Learning opportunity:** Know for next time!

---

## How to Start Your Documentation

### Don't Look for the Magic Template

Start simply, just like when you started designing your game.

### Step-by-Step Process

**1. Start with a rough bullet list**
- List ideas you want to include in your game
- Just capture thoughts

**2. Write down questions as they arise**
- These questions are crucial!
- "Working on your design" mostly means answering these questions
- Don't lose them!

**3. Answer questions and document decisions**
- Each time you answer a question to your satisfaction
- Make a note of the decision
- **Crucially: Note the reason why you made it**

**4. Let structure emerge naturally**
- List of ideas, plans, questions, and answers will grow
- It will start to fall naturally into sections
- Don't force structure prematurely

**5. Keep writing what you need to remember and communicate**
- This is your guide for what to write
- Not a template or external requirement

### Result

Before you know it, you will have a design document—not one based on a magic template, but one that grew organically around the unique design of your unique game.

---

## Document Selection Matrix

### How to Decide Which Documents to Create

For each document type, ask:

1. **Memory question:** Will we need to remember this information?
2. **Communication question:** Does this information need to be shared?

| If... | Then... |
|-------|---------|
| Yes to memory, Yes to communication | Create and maintain the document |
| Yes to memory, No to communication | Create personal notes (not formal doc) |
| No to memory, Yes to communication | Create document, may not need updates |
| No to memory, No to communication | Don't create this document type |

### Document Priority for Different Project Sizes

**Small team (< 5 people):**
- Game design overview
- Detailed design (lightweight, maybe just shared notes)
- Project schedule

**Medium team (5-20 people):**
- All small team docs, plus:
- Art bible
- Pipeline overview
- Asset tracker
- Story bible (if narrative-driven)

**Large team (20+ people):**
- All medium team docs, plus:
- Technical design document
- System limitations
- Game budget
- Story overview
- Concept art overview
- Script
- Tutorial/manual

---

## Document Lifecycle Patterns

### Typical Document Evolution

**Phase 1: Concept** (Pre-production)
- Game design overview (first!)
- Concept art overview
- Story overview (if narrative-driven)
- Game budget

**Phase 2: Early Production**
- Detailed design document (starts messy)
- Technical design document
- Art bible
- Pipeline overview
- Project schedule
- Asset tracker

**Phase 3: Mid Production**
- Detailed design often abandoned (game is reference)
- Technical design often abandoned (codebase is reference)
- Project schedule updated continuously
- Asset tracker maintained continuously
- Story bible (locked down)
- Script (being written)

**Phase 4: Late Production**
- Tutorial and manual (finalized)
- All production docs maintained
- Most other docs frozen or abandoned

**Phase 5: Post-Launch**
- Player walk-throughs appear
- Living documents for games-as-a-service

---

## Common Documentation Mistakes

### Mistake 1: Trying to Find the Magic Template

**Problem:** Wasting time looking for perfect GDD template

**Solution:** Start with bullet lists and let structure emerge

---

### Mistake 2: Creating Documents Nobody Reads

**Problem:** Creating documents because "we're supposed to" without clear memory/communication purpose

**Solution:** Before creating any document, explicitly answer:
- What do we need to remember?
- What needs to be communicated?

---

### Mistake 3: Treating Documents as Blueprints

**Problem:** Team treats design docs as unchangeable specifications instead of theories

**Solution:** Explicitly frame documents as "current theories" and update freely as theories evolve

---

### Mistake 4: Not Writing Down Decisions

**Problem:** Relying on memory or verbal communication only

**Solution:** Make it a habit to document decisions and reasons immediately

---

### Mistake 5: One Giant GDD

**Problem:** Creating one massive document that's hard to navigate and maintain

**Solution:** Create many small documents for different subsystems

---

### Mistake 6: Abandoning All Documentation Mid-Project

**Problem:** Stopping all documentation once game is playable

**Solution:** Some docs (schedule, asset tracker, budget) must be maintained throughout. Others can be abandoned when game becomes the reference.

---

### Mistake 7: Not Including Everyone on Design Communications

**Problem:** Sending design emails to only some team members

**Solution:** Include everyone to avoid people feeling left out or missing context

---

## Tool Recommendations

### Modern Documentation Tools

**For living documents:**
- **Google Docs** - Industry standard for collaborative game documents
  - Real-time collaboration
  - Easy sharing and access control
  - Comment and suggestion features
  - Version history

**For design wikis:**
- **Confluence** - Professional wiki for larger teams
- **Notion** - Modern all-in-one workspace
- **MediaWiki** - Open-source wiki solution

**For project management:**
- **Jira** - Industry standard for game teams
- **Asana** - User-friendly alternative
- **Trello** - Visual board-based planning
- **Monday.com** - Flexible workflow management

**For asset tracking:**
- **Shotgun** - Professional pipeline management
- **Perforce** (with Helix) - Version control with asset management
- **Custom spreadsheets** - Often sufficient for smaller teams

**For concept art/visual references:**
- **Miro** - Digital whiteboard for visual planning
- **Figma** - Design collaboration
- **Pinterest/Milanote** - Visual mood boards

---

## Quick Reference: Document Types at a Glance

| # | Document | Creator | Purpose | Audience | Update Frequency |
|---|----------|---------|---------|----------|------------------|
| 1 | Game Design Overview | Design | High-level vision | Management, whole team | Rarely |
| 2 | Detailed Design | Design | Mechanics details | Designers, engineers, artists | Frequent (early), then abandoned |
| 3 | Story Overview | Design | Setting, characters, actions | Writers | Iterative |
| 4 | Technical Design | Engineering | System architecture | Engineers | Frequent (early), then abandoned |
| 5 | Pipeline Overview | Engineering | Art integration | Artists | As pipeline changes |
| 6 | System Limitations | Engineering | Technical constraints | Designers, artists | Early, refined as needed |
| 7 | Art Bible | Art | Visual consistency | Artists | Early, expanded as needed |
| 8 | Concept Art Overview | Art + Design | Visual direction | Whole team | Early and iterative |
| 9 | Game Budget | Production | Cost estimate | Management, funders | Initial, then ongoing tracking |
| 10 | Asset Tracker | Production | Asset state | Whole team | Continuous |
| 11 | Project Schedule | Production | Task planning | Whole team | Weekly or more |
| 12 | Story Bible | Writing | Story world rules | Whole team | Established early |
| 13 | Script | Writing | Dialog | Voice actors, designers | During production |
| 14 | Tutorial/Manual | Writing/Design | Teach players | Players | Finalized late |
| 15 | Walk-through | Players | Player guide | Players | Post-launch |

---

## Using Lens #102: The Lens of Documentation

Apply this lens when deciding what to document:

**Questions to ask:**
- What do we need to remember while making this game?
- What needs to be communicated while making this game?

**If you can't answer both questions for a document type, don't create it.**
