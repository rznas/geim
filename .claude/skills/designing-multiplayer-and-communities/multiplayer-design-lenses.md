# Multiplayer Design Lenses

## Introduction

These six lenses help you evaluate and improve multiplayer and community systems. Each lens provides specific questions to ask during design and iteration.

---

## Lens #95: The Lens of Spectation

**Purpose**: Ensure your game is interesting to watch, not just play.

**Context**:
For thousands of years, humans have loved watching others play games—but only if the games are worth watching. Spectation includes:
- In-person spectators (living room, hearth)
- Remote spectators (streaming, esports)
- Casual observers (kibbitzing, helping)
- Competitive audiences (tournaments)

**The Questions:**

### Is my game interesting to watch? Why or why not?

**Consider:**
- Can spectators understand what's happening?
- Are there dramatic moments worth watching?
- Is skill visibly displayed?
- Can spectators follow strategy and tactics?
- Are outcomes surprising or exciting?
- Do spectators have reason to care about outcomes?

**What Makes Games Watchable:**
- **Clear visual communication**: Actions and consequences are obvious
- **High-skill expression**: Impressive plays are recognizable
- **Narrative tension**: Stakes, comebacks, upsets
- **Strategic depth**: Decisions are interesting even when gameplay isn't flashy
- **Personality**: Players can express character and style
- **Emotional beats**: Excitement, disappointment, triumph are visible

**What Makes Games Unwatchable:**
- Confusing visual presentation
- Important information hidden from spectators
- Slow pace with little happening
- No visible skill difference between players
- Outcomes feel random or arbitrary
- Can't tell who's winning

### How can I make it more interesting to watch?

**Design Techniques:**

#### Visual Clarity
- Clear indicators of who's winning
- Health bars, scores, resources visible
- Action feedback (hit effects, sound cues)
- Camera angles that show important action
- Highlight important moments (slow-mo, replays)
- Color coding for teams/players

#### Spectator-Specific Features
- Spectator camera controls
- Different information for spectators vs. players
- Commentator tools
- Instant replay systems
- Kill cams and highlight reels
- Statistics overlays

#### Pacing and Drama
- Interest curves that build to climaxes
- Comeback mechanics (exciting to watch)
- Visible momentum shifts
- Victory/defeat moments are clear
- Tension builds throughout match

#### Social Features
- Let spectators interact (cheering, reactions)
- Enable kibbutzing (helpful commentary)
- Spectator chat
- Predictions and betting (for fun)
- Spectator influence (within limits)

**Living Room Spectation:**
Particularly important for "hearth" venue:
- Others in room might rather watch TV
- Make game more compelling than TV
- Encourage laughing, commenting, helping
- Involve non-players in problem-solving
- Make screen content interesting even if not playing

**Streaming and Esports:**
- Design for 2-camera perspective (player view + overview)
- Support for casting and commentary
- Interesting to watch even without sound
- But also supports excited commentary
- Replay and highlight systems
- Spectator HUD with key information

**Examples:**
- **Fighting games**: Clear health bars, dramatic special moves, comeback potential
- **MOBAs**: Strategic depth, team coordination visible, big teamfight moments
- **Speedrunning**: Skill expression, racing against clock/others, close finishes
- **Party games**: Funny moments, everyone can understand, reactions are entertainment

---

## Lens #95½: The Lens of Cheatability

**Purpose**: Ensure players trust your game's fairness.

**Context**:
Cheating in isolation only cheats yourself. Cheating against other players is meaningful breach of social contract. This creates two serious problems:
1. **Stress**: Players must watch for cheating, creates tension
2. **Trust erosion**: If cheating possible and undetectable, honest players stop playing

**The Questions:**

### Can players cheat at my game? How?

**Common Cheating Methods:**

#### Client-Side Manipulation
- Modified game files
- Memory editing
- Speed hacks
- Wallhacks (seeing through walls)
- Aimbots (auto-targeting)
- Removed visual effects (fog, etc.)

#### Network Exploits
- Lag switching (manipulating latency)
- Packet manipulation
- Man-in-the-middle attacks
- DDoS attacks on opponents

#### Information Cheating
- Stream sniping (watching opponent's stream)
- Screen peeking (local multiplayer)
- External information sources
- Ghosting (spectator helping player)

#### Automation
- Bots playing instead of humans
- Macros and scripts
- Auto-farming programs
- Click automation

#### Social Engineering
- Account sharing
- Smurfing (skilled players on new accounts)
- Boosting services
- Collusion and match-fixing

**Solutions:**

**Server-Authoritative Systems:**
- Server validates all critical actions
- Client is "dumb terminal" that displays only
- Hit detection server-side
- Movement validation server-side
- Resource changes server-side

**Anti-Cheat Software:**
- Detect modified files
- Memory scanning
- Behavior analysis
- Known cheat signatures
- Impossible action detection

**Design Against Cheating:**
- No critical information client-side
- Randomness generated server-side
- Actions must be physically possible
- Statistical anomaly detection
- Rate limiting

### If players can cheat, will anyone notice?

**Detection Methods:**

#### Obvious Impossibilities
- Moving too fast
- Perfect accuracy
- Impossible reaction times
- Resources appearing from nowhere
- Actions that violate game rules

#### Statistical Anomalies
- Win rates far above normal
- Performance that improves impossibly fast
- Consistent patterns (always headshots, never misses)
- Inhuman consistency
- Impossible knowledge (always knows enemy position)

#### Player Reports
- Other players notice suspicious behavior
- Reporting systems flag accounts
- Multiple independent reports
- Spectator observations

#### Replay Analysis
- Review of gameplay footage
- Frame-by-frame analysis
- Impossible actions visible
- Pattern recognition

**Making Cheating Noticeable:**
- Clear performance metrics
- Replays and kill cams
- Spectator modes
- Leaderboards with statistics
- Community oversight
- Transparent anti-cheat efforts

**If Cheating Goes Unnoticed:**
- Honest players assume losses are legitimate
- No reporting happens
- Cheaters proliferate
- Eventually ruins game for everyone

### Do players trust my game?

**Indicators of Trust:**

**Positive Signs:**
- Players believe matches are fair
- Losses attributed to own mistakes
- Report suspicious behavior (care about fairness)
- Continue playing despite losing
- Recommend game to friends
- Positive community sentiment

**Warning Signs:**
- Frequent cheating accusations
- Players assume losses are due to cheaters
- Declining player base
- Negative reviews mentioning cheating
- "Everyone cheats so I have to" mentality
- Community toxicity around fairness

**Building Trust:**

#### Transparency
- Public anti-cheat policies
- Ban announcements (without naming specific players)
- Statistics on bans and cheater percentages
- Regular communication about anti-cheat efforts
- Acknowledge cheating problems honestly

#### Visible Action
- Swift bans for confirmed cheaters
- Publicized ban waves
- Overwatch/review systems (community helps judge)
- Regular anti-cheat updates
- Close loopholes quickly

#### Fair Systems
- Server-authoritative for critical actions
- Clear match logs and replays
- Appeal processes for false positives
- Proportional punishments
- Forgiveness for first-time minor offenses

#### Community Involvement
- Player reporting systems
- Community review (like CS:GO Overwatch)
- Commend honest players
- Highlight fair play
- Anti-cheat ambassadors

**Examples:**
- **Valorant**: Kernel-level anti-cheat, transparent communication, swift bans
- **CS:GO**: Overwatch system (community reviews), VAC bans, Trust Factor
- **League of Legends**: Tribunal system, chat analysis, behavioral scoring

---

## Lens #96: The Lens of Friendship

**Purpose**: Enable and support meaningful friendships through your game.

**Context**:
People love to play games with friends. Friendships are the glue holding communities together. Your game must support all three friendship phases: breaking the ice, becoming friends, and staying friends.

**The Questions:**

### What kind of friendships are my players looking for?

**Different Types:**

#### Children
- Real-life friends brought into game
- Safe, parent-approved connections
- Play partners for shared fun
- Generally not seeking strangers

#### Teenagers
- Status-based friendships
- Romantic interests
- "Cool" or interesting people
- People more exciting than regular friends
- Identity exploration through relationships

#### Adults
- Similar interests and problems
- Compatible skill levels
- Reliable teammates
- Schedule-compatible friends
- Mature conversation partners

#### Competitive Players
- Worthy opponents
- Practice partners
- Team members with complementary skills
- People to discuss strategy with

#### Casual Players
- Fun, low-pressure social time
- Don't-take-it-too-seriously friends
- People to relax with
- Conversation during play

**Match Systems to Desired Friendships:**
- Competitive game → skilled teammates/opponents
- Social game → interesting conversationalists
- Creative game → collaborative partners
- Casual game → low-pressure fun companions

### How do my players break the ice?

**Ice-Breaking Systems:**

#### Discovery
- How do players find compatible people?
- Matchmaking algorithms
- Server browsers
- Guild recruitment
- Friend recommendations
- Interest-based matching

#### Low-Pressure Interaction
- What's first interaction like?
- Can they observe before engaging?
- Optional communication (not forced)?
- Shared activities without talking required?
- Emotes and non-verbal options?

#### Self-Expression
- Can players show who they are?
- Profiles with interests?
- Avatars and customization?
- Playstyle indicators?
- Achievement showcases?

**Reduce Friction:**
- Make first contact easy and low-stakes
- Don't force awkward interactions
- Provide conversation starters (gameplay)
- Safe spaces for meeting (newbie areas, social hubs)

### Do my players have enough chance to talk to each other? Do they have enough to talk about?

**Ability to Talk:**

#### Communication Tools
- Text chat (global, team, private)?
- Voice chat (opt-in)?
- Emotes and quick communication?
- Asynchronous messaging?
- Cross-platform chat?

#### Opportunities to Talk
- Time between matches?
- Social hubs and waiting areas?
- During low-intensity gameplay?
- Post-victory/defeat screens?
- Guild halls and private spaces?

**Things to Talk About:**

#### Gameplay Content
- Strategic depth worth discussing?
- Different approaches to try?
- Shared experiences ("Did you see that?!")?
- Puzzles to solve together?
- Decisions to debate?

#### Ongoing Content
- Regular updates and events?
- Balance changes to discuss?
- New content to explore together?
- Meta-game shifts?
- Seasonal content?

#### Social Topics
- Guild activities and goals?
- Community drama and politics?
- Player achievements?
- Upcoming events?
- Game lore and speculation?

**Balance**:
Good online games are NOT "more community than game"—they need solid balance:
- Interesting game → things to discuss
- Good community support → players stay engaged

### When is the moment they become friends?

**Friendship Transition:**

#### Shared Experiences
- Intense cooperative challenge?
- Close competitive match?
- Unexpected victory together?
- Shared failure and laughing about it?
- Dramatic moment they both witnessed?

#### Conversation After Experience
- Time to chat after gameplay?
- Excitement to share?
- Recognition of compatibility?
- Mutual respect established?

#### Formalization
- Friend request system?
- Commendation ("honor this player")?
- Team formation?
- Guild invitation?
- Exchange of gifts or items?

**Design the Moment:**
- Post-match chat lobby (60+ seconds)
- Victory/defeat celebration with chat
- "Play again?" prompts
- "Add friend" suggestions
- Recognition of good teamwork
- Shared achievement notifications

### What tools do I give the players to maintain their friendships?

**Reconnection:**

#### Friends Lists
- Robust, searchable lists?
- Online status indicators?
- Last-seen timestamps?
- Activity notifications?
- Cross-game integration?

#### Scheduling
- Calendar systems?
- Event scheduling?
- Raid sign-ups?
- Time zone support?

#### Finding Friends
- Can easily locate friends in-game?
- Join friend's session?
- Invite to party/group?
- Teleport to friend?

**Ongoing Engagement:**

#### Reasons to Play Together
- Friend bonuses (XP, rewards)?
- Friend-exclusive content?
- Shared progression?
- Guild goals?
- Cooperative challenges?

#### Communication
- Always-available chat channels?
- Voice chat parties?
- Asynchronous messages?
- Gift systems?
- Status updates?

#### Memorable Identity
- Persistent usernames?
- Distinctive avatars?
- Customization options?
- Titles and badges?
- Reputation systems?

**Guild/Clan Systems:**
- Group friendships together?
- Shared spaces?
- Collective goals?
- Management tools?
- Communication platforms?

---

## Lens #97: The Lens of Expression

**Purpose**: Enable players to express identity and feel alive, proud, important, and connected.

**Context**:
Self-expression is extremely important in multiplayer games. You're creating a fantasy world where players can be whatever they like—why not let them express that? Expression creates connection to game and community.

**The Questions:**

### How am I letting players express themselves?

**Expression Categories:**

#### Visual Identity
- **Avatar creation**: Face, body, appearance customization?
- **Cosmetics**: Skins, outfits, accessories?
- **Colors and patterns**: Personal color schemes?
- **Animations**: Emotes, victory poses, dances?
- **Size and proportions**: Within reasonable limits?

#### Gameplay Style
- **Build diversity**: Multiple viable character builds?
- **Strategic approaches**: Different ways to win?
- **Role specialization**: Can players define their role?
- **Signature moves**: Personal techniques and combos?
- **Playstyle statistics**: Tracked and displayed?

#### Communication Style
- **Text customization**: Colors, fonts, styles?
- **Emotes and reactions**: Emotional expression?
- **Voice lines**: Character-appropriate phrases?
- **Chat badges and flair**: Express status and personality?
- **Custom messages**: Personalized callouts?

#### Creative Expression
- **Player-created content**: Levels, maps, mods?
- **Building systems**: Houses, bases, structures?
- **Crafting and design**: Custom items?
- **Writing and storytelling**: Player narratives?
- **Art and decoration**: Visual customization?

#### Social Expression
- **Guild customization**: Emblems, colors, names?
- **Titles and achievements**: Display accomplishments?
- **Badges and flair**: Show personality and interests?
- **Profile customization**: Bios, quotes, showcases?
- **Friend list organization**: Categories, notes, favorites?

#### Status and Identity
- **Ranks and ratings**: Competitive standing?
- **Specializations**: Known for specific skills?
- **Reputation**: Community-recognized traits?
- **Leadership roles**: Guild officers, mentors, moderators?
- **Celebrity status**: Recognition for achievement or personality?

**Vanity Items as Monetization:**
- Key revenue source for F2P games
- Players pay to express unique identity
- No pay-to-win concerns
- Supports ongoing development
- Strong player engagement driver

**Examples:**
- **League of Legends**: Skins, emotes, borders, icons
- **Fortnite**: Character skins, emotes, contrails, wraps
- **World of Warcraft**: Transmog, mounts, pets, titles
- **Minecraft**: Building, skins, custom servers
- **Fighting games**: Custom colors, taunts, intros/outros

### What ways am I forgetting?

**Often-Overlooked Expression:**

#### Sound
- **Voice packs**: Different announcer voices
- **Music selection**: Personal soundtracks
- **Sound effect customization**: Hit sounds, ability sounds
- **Voice chat personality**: Filters, modulation (use carefully)

#### Motion and Animation
- **Walk/run styles**: Personality in movement
- **Idle animations**: Character behavior when waiting
- **Celebration animations**: Victory poses and dances
- **Emotion animations**: Laughing, crying, waving

#### Housing and Spaces
- **Personal spaces**: Player housing, guild halls
- **Decoration**: Furniture, trophies, art
- **Functional customization**: Useful + expressive
- **Visitor access**: Show off to friends

#### Gameplay Signature
- **Favored strategies**: Stats showing preferences
- **Signature champions/characters**: Known for certain picks
- **Unusual builds**: Creative, off-meta approaches
- **Named techniques**: Community recognizes your innovations

#### Narrative Expression
- **Character backstories**: Player-written lore
- **Roleplaying tools**: Support in-character play
- **Journal or diary systems**: Document adventures
- **Screenshots and clips**: Curate memorable moments

#### Meta-Game Expression
- **Theorycrafting**: Public analysis and guides
- **Streaming and content**: Player as entertainer
- **Community leadership**: Guide writer, teacher, organizer
- **Competition**: Tournament participation and achievement

### Are players proud of their identity? Why or why not?

**Indicators of Identity Pride:**

**Positive Signs:**
- Players spend time on customization
- Show off avatars to friends
- Care about collecting cosmetics
- Talk about their identity outside game
- Feel unique and special
- Vanity items sell well
- Players recognize each other by appearance

**Warning Signs:**
- Limited customization ignored
- Everyone looks the same
- Players don't care about cosmetics
- Identity feels generic or forced
- No sense of ownership over character
- Don't show avatars to friends

**What Makes Players Proud:**

#### Uniqueness
- Rare items or combinations
- Personal creative expression
- Not looking like everyone else
- Finding unique builds or styles
- Signature that's recognizably theirs

#### Achievement
- Identity reflects accomplishments
- Hard-earned cosmetics (not just purchased)
- Visible skill or dedication
- Recognition from community
- Status symbols matter

#### Authenticity
- Can express real personality
- Matches self-image or ideal self
- Freedom to be creative
- Not constrained to stereotypes
- Variety of valid expressions

#### Recognition
- Others compliment or ask about identity
- Known in community for signature style
- Friends recognize them immediately
- Reputation tied to identity
- Identity has social meaning

**Building Pride:**

#### Meaningful Customization
- Enough options to feel unique
- High-quality visual design
- Mix of rare and common items
- Unlockables through gameplay
- Rewards for dedication

#### Social Reinforcement
- Others can see and appreciate customization
- Compliment systems
- Screenshots and sharing
- Identity carries across contexts
- Reputation systems

#### Progression
- Identity improves over time
- New options unlock
- Achievements add to identity
- Growth visible to self and others

#### Respect Choices
- Multiple valid aesthetics
- No "wrong" ways to customize
- Don't force specific looks
- Support variety of expression
- Avoid gatekeeping

**Combination with Other Lenses:**
- Works well with **Lens #71: Beauty**
- Synergy with **Lens #90: Status**
- Supports **Lens #96: Friendship** (memorable identities)
- Reinforces **Lens #98: Community** (diverse, expressive members)

---

## Lens #98: The Lens of Community

**Purpose**: Ensure your game fosters strong, lasting community.

**Context**:
Communities form when four elements are present: membership (part of group), influence (power over something), integration (fulfills needs), and shared emotional connection. Strong communities extend game life from months to decades.

**The Questions:**

### What conflict is at the heart of my community?

**Principle**: Conflict is at the heart of all communities.

**Conflict Against Other Players:**
- Competitive rankings and status
- Team vs. team competition
- Guild vs. guild warfare
- Server rivalries
- Leaderboard races
- Tournament brackets

**Conflict Against the Game:**
- Difficult raids or bosses
- Shared challenges
- Server-wide events
- Cooperative problem-solving
- Resource scarcity (vs. environment)
- Survival against game threats

**Best Communities Have Both:**
- **Example: CCGs**
  - Competitive: Being best player in community
  - Cooperative: Strategies too complex, players share and discuss
- **Example: Minecraft**
  - Cooperative: Working together to build
  - Competitive: Being best builder in community

**If No Clear Conflict:**
- Community lacks cohesion
- No shared purpose
- Players don't need each other
- Weak social bonds

**Design Implication:**
Ensure players either:
1. Want to prove they're better than others, OR
2. Need cooperation to overcome challenges
3. (Ideally both)

### How does architecture shape my community?

**Real-World Parallel:**
- Some neighborhoods have strong community
- Others don't know neighbors
- Usually due to physical design

**Community-Building Architecture:**
- Walkable with destinations
- Dead-end streets (recognize passersby)
- Frequent encounters with same people
- Time and space to talk

**Game World Translation:**

#### Social Hubs
- Main cities or gathering spaces
- Everyone passes through regularly
- Natural congregation points
- Comfortable places to idle

#### Repeated Encounters
- Same players in same locations
- Routes to important destinations
- Waiting areas (auction houses, quest hubs)
- Guild halls and private spaces

#### Facilitating Communication
- Proximity chat in certain areas
- Social zones with enhanced chat
- Meeting point landmarks
- Scheduled gathering spaces (events spawn here)

**Bad Architecture:**
- Isolated player housing
- No reason to congregate
- Fast travel eliminates encounters
- Matchmaking pulls from huge pools (never see same people)
- No memorable locations

**Good Architecture:**
- Central hubs with amenities
- Reasons to return regularly
- Limited fast travel (must pass through)
- Server-specific communities (see same people)
- Landmarks for planned meetings

### Does my game support three levels of experience?

**Level 1: The Newbie**

Their game is **learning to play**.

**Support Needed:**
- Rewarding tutorial and learning
- Interactions with experienced players
- Protected spaces (newbie zones)
- Clear progression feedback
- Quick early victories
- Guidance from community

**Red Flags:**
- Newbies abandoned to figure it out alone
- No interaction with experienced players
- Overwhelming from start
- High quit rate in first hours

**Level 2: The Player**

Their game is **mastering core systems**.

**Support Needed:**
- Core progression and content
- Skill development paths
- Social play with peers
- Clear goals and challenges
- Competitive and cooperative content

**Red Flags:**
- Nothing to master
- No clear goals for middle game
- Progression stalls
- Content drought in middle

**Level 3: The Elder**

Their game is **meta-game activities**.

**Support Needed:**
- Extremely difficult content
- Governance and moderation roles
- Content creation tools
- Guild management features
- Teaching and mentorship systems
- Recognition and status

**Red Flags:**
- Nothing for elders to do
- No recognition of expertise
- Can't contribute back to community
- Endgame feels empty
- Elders leave for new games

**If Missing Any Level:**
- Newbies: Limited audience growth
- Players: Hollow core, no retention
- Elders: Loss of community leaders and evangelists

### Are there community events?

**Why Events Matter:**
- Give players something to look forward to
- Create shared experiences
- Punctuate time with memorable moments
- Guarantee opportunities to connect
- Create check-in habits

**Types of Events:**

#### Competitive
- Tournaments and leagues
- Races and speedruns
- Contests and competitions
- Ranked seasons
- Arena battles

#### Cooperative
- Server-wide raids
- Community goals
- Collaborative building
- Charity events
- Defense missions

#### Social
- Holiday celebrations
- Awards ceremonies
- Developer Q&As
- Player spotlights
- Guild gatherings

#### Special/Seasonal
- Limited-time content
- Seasonal events
- Anniversary celebrations
- New content launches
- Story milestones

**Event Frequency:**
- Weekly: Small events, predictable
- Monthly: Medium events, anticipated
- Seasonal: Major events, memorable
- Yearly: Huge events, defining moments

**If No Events:**
- Nothing to look forward to
- No shared experiences
- Time doesn't feel punctuated
- Less reason to check back regularly
- Community feels static

### Why do players need each other?

**Dependency Creates Community Value:**

**If Players Don't Need Each Other:**
- Community has no functional value
- Social play is nice-to-have, not necessary
- Players drift toward solo play
- Community weakens over time

**Ways Players Can Need Each Other:**

#### Complementary Abilities
- Class systems (tank, healer, DPS)
- Role specialization
- Different information (each sees different things)
- Cooperative puzzles
- Multi-person challenges

#### Resource Sharing
- Trade and specialization
- Shared resources (community property)
- Crafting dependencies
- Economy requiring exchange

#### Social Needs
- Guild requirements for content
- Reputation and status (need audience)
- Competition (need opponents)
- Friends for scheduled content

#### Information and Teaching
- Complex strategies requiring discussion
- Elders teaching newbies
- Shared problem-solving
- Collective knowledge

#### Progression Advantages
- Friend bonuses
- Guild progression
- Group content has better rewards
- Social features unlock content

**Lens #80: Help**
- People want to help each other
- Helping is deeply satisfying
- Create situations where:
  - Players need help
  - Can easily ask
  - Others quickly assist
  - Everyone benefits

**Balance**:
- Don't force multiplayer on everyone
- Solo play should be viable
- But make social play clearly more rewarding
- Show value gained from cooperation

---

## Lens #99: The Lens of Griefing

**Purpose**: Minimize toxic behavior and protect community.

**Context**:
Griefers derive enjoyment from spoiling others' fun rather than from gameplay. They see themselves as higher status because they can ruin experiences others care about. Best approach: make griefing boring, not policing it afterward.

**The Questions:**

### What systems in my game are easy to grief?

**Common Griefing Vectors:**

#### PvP Combat
- Unrestricted player killing?
- Corpse camping?
- Killing much weaker players?
- Ganking in non-PvP contexts?

#### Stealing and Looting
- Pickpocketing?
- Kill stealing (taking credit for others' work)?
- Ninja looting (unfair loot distribution)?
- Resource stealing?

#### Trading and Economy
- Scam potential?
- Unfair trades?
- Item misrepresentation?
- "Trust trades"?

#### Communication
- Obscene language loopholes?
- Harassment via chat/voice?
- Spam and flooding?
- Impersonation?

#### Movement and Blocking
- Can block doorways/paths?
- Prevent other players from moving?
- Griefing via collision?

#### System Loopholes
- Disconnect exploits?
- Physics glitches?
- Duplication bugs?
- Economy manipulation?
- Furniture spelling obscenities?

**For Each System, Ask:**
- How could a griefer abuse this?
- What power does it give over other players?
- Can it be used to frustrate or harm?
- Are there unintended griefing uses?

### How can I make my game boring to grief?

**Make Griefing Unrewarding:**

#### Remove Power
- No visible impact on victims
- Victims don't lose much
- Can't prevent others from playing
- Limited ability to harm

#### Remove Feedback
- Griefer doesn't know if it worked
- No reactions from victims
- Filtered obscenities show normally to griefer
- No satisfaction from attempt

#### Make It Difficult
- Too much work for payoff
- Requires coordination (hard to do solo)
- Time-consuming
- Easy to counter

#### Remove Exclusivity
- Everyone can do it (not special)
- No status from griefing
- Victims can easily retaliate
- Griefers can be griefed back

#### Create Consequences
- Quick bans
- Reputation penalties
- Loss of privileges
- Visible punishment

**Positive Alternative:**
- Make helping more rewarding than harming
- Cooperation grants better rewards
- Status from being helpful
- Recognition for positive behavior

**Lens #80: Help Connection:**
People want to help—create situations where helping is easier and more satisfying than harming.

### Am I ignoring any loopholes?

**Common Overlooked Loopholes:**

#### Disconnect Exploits
- Disconnect to avoid defeat?
- Disconnect to duplicate items?
- Disconnect to escape consequences?
- Disconnect to deny rewards?

#### Physics and Geometry
- Terrain clipping?
- Getting stuck grants invulnerability?
- Collision exploits?
- Out-of-bounds advantages?

#### Economy and Trading
- Infinite money bugs?
- Item duplication?
- Trade window exploits?
- Auction house manipulation?

#### Social Systems
- Friend/block abuse?
- Reporting system abuse?
- Matchmaking manipulation?
- Guild system exploits?

#### Client-Server Mismatches
- Client shows one thing, server another?
- Lag exploitation?
- Packet manipulation?
- Client-side validation trusted?

**Prevention:**

#### Extensive Testing
- Beta with large groups
- Adversarial testing (try to break it)
- Community bug bounties
- Edge case exploration

#### Quick Response
- Fast patching process
- Rollback capabilities
- Clear communication
- Thank bug reporters

#### Design for Failure
- Server-authoritative
- Validate all actions
- Sanity checks
- Impossible actions rejected
- Graceful disconnect handling

**Ongoing Vigilance:**
- Monitor for unusual patterns
- Track impossible statistics
- Player reports
- Community feedback
- Regular security audits

---

## Using the Lenses Together

**Lens Flow for Multiplayer Design:**

1. **Lens #95: Spectation** → Is core gameplay worth watching?
2. **Lens #96: Friendship** → Can meaningful friendships form?
3. **Lens #97: Expression** → Can players express identity?
4. **Lens #98: Community** → Do all community elements exist?
5. **Lens #99: Griefing** → Are griefing vectors closed?
6. **Lens #95½: Cheatability** → Do players trust fairness?

**Iterative Application:**

Design feature → Apply all 6 lenses → Identify problems → Redesign → Repeat

**Example: Guild System Design**

- **Spectation**: Can others see guild achievements? Interesting to watch guild competitions?
- **Friendship**: Does guild help friendships form and last? Shared experiences?
- **Expression**: Can guild express identity? Customization options?
- **Community**: Clear conflict? Architecture for gathering? Three levels? Events? Dependency?
- **Griefing**: Can guild systems be griefed? Guild bank theft? Kick abuse?
- **Cheatability**: Can guilds cheat for rankings? Exploit for rewards?

**Combining Lenses:**

- **Friendship + Expression** → Memorable identities help friendships
- **Community + Griefing** → Strong community self-regulates griefing
- **Spectation + Cheatability** → Spectators can identify cheaters
- **Expression + Community** → Diverse identities enrich community
- **Friendship + Community** → Friendships aggregate into communities

---

## Quick Reference Checklist

**For Each Multiplayer System, Ask:**

- [ ] **Spectation**: Interesting to watch? Clear? Dramatic?
- [ ] **Cheatability**: Can players cheat? Will it be noticed? Do players trust it?
- [ ] **Friendship**: Supports ice-breaking? Becoming friends? Staying friends?
- [ ] **Expression**: How do players express themselves? Are they proud?
- [ ] **Community**: What's the conflict? How does space shape it? Three levels? Events? Dependency?
- [ ] **Griefing**: What's easy to grief? How to make boring? Any loopholes?

Apply all six lenses to create robust, trustworthy, engaging multiplayer systems that foster lasting communities.
