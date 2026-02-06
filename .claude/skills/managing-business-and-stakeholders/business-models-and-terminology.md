# Business Models and Terminology

## Follow the Money

To understand any game business, **trace where every dollar goes**. This is the single most important business skill for a game designer. When baffled by a new business model, find a money person and ask: "Can you show me where the money goes?"

---

## Business Model 1: Retail

**Consumer pays:** ~$50 at a physical or digital storefront

**Where the money goes (per unit sold):**

| Recipient | ~Amount | Why |
|-----------|---------|-----|
| Retailer | $13 | Runs the store — retail is low-margin; they cut every corner to survive |
| Publisher | $14 | Coordinates all parties, absorbs financial risk, funds titles that lose money |
| Platform holder | $8 | Console manufacturer (Sony, Nintendo, Microsoft) — "taxes" each title. They often sell consoles at a loss and recoup through this tax |
| Markdown reserve | $3 | When titles are discounted, the publisher absorbs the loss |
| Developer | $8–10 | Actually makes the game |
| Other (marketing, shipping, etc.) | remainder | |

**Key insight:** Most of the consumer's $50 goes to distribution and risk management — NOT game creation. This is exactly why developers got excited when digital distribution emerged.

**Critical distinction — Sold in vs. Sold through:**
- **Sold in:** Retailer buys games from publisher (inventory transfer)
- **Sold through:** Consumer buys game from retailer (actual sale)
- Only **sold through** matters. If a publisher brags about 1.5 million copies sold after one week, ask: "Sold in or sold through?" This distinction can reveal the real picture.

---

## Business Model 2: Direct Download

**Consumer pays:** ~$10 on Steam, App Store, etc.

**Where the money goes:**

| Recipient | ~Amount | Notes |
|-----------|---------|-------|
| Platform (store) | 30% (~$3) | Apple, Steam, Google take their cut |
| Developer | 70% (~$7) | Before marketing costs |
| Marketing | $0–$6 | Now the developer's problem — previously the publisher's |

**The marketing challenge:** If you spend what publishers historically spent on marketing (~$6/customer), you're left with ~$1 profit per unit. Customer acquisition cost management is one of the hardest problems in self-publishing. You must be careful not to spend more acquiring customers than each customer brings in.

**Net effect:** Direct download cuts out the publisher and retailer, but the developer now owns the marketing burden that was previously shared.

---

## Business Model 3: Free-to-Play (F2P)

**Consumer pays:** $0 upfront. Revenue comes from microtransactions by a fraction of players.

**Core economics:**

| Metric | Example Value | What It Means |
|--------|---------------|---------------|
| Average LTV | $5 | Total money one player spends over their entire play history |
| Customer acquisition cost | $3 | Average spend to get one new player |
| Profit per player | $2 | LTV minus acquisition cost |
| Dev cost | $500K | Typical budget for a modest mobile F2P game |
| Breakeven | 250,000 players | At these numbers, need this many players just to recover dev cost |

**The psychology problem:** Players often feel manipulated by F2P monetization. The design of payment moments is critical.

### Good vs. Bad F2P Design (D&D Online Example)

**Bad pattern:** Player gets stuck on a hard boss → game offers: "Buy this magic battle axe for $5" → Player pays, kills boss, **feels like a cheat**

**Good pattern:** Player encounters a new dungeon → game offers: "Adventure: Dragon's Cave — $5" → Player pays, enters dungeon, fights hard, eventually slays dragon → finds magic battle axe in treasure heap → Player **feels like a hero**

Same outcome ($5 spent → magic weapon obtained). Completely different player experience. The designer who understood player psychology generated identical revenue while making players feel rewarded instead of exploited.

### Whale Dynamics
- 50% of F2P game revenue can come from just **0.15% of players** (whales)
- Whales will spend hundreds or thousands of dollars if it helps them succeed
- F2P designers pay enormous attention to whale behavior and spending patterns
- Finding ways to increase whale spending can be a major revenue lever

---

## Other Business Models (Brief)

| Model | Revenue Source | Key Characteristic |
|-------|---------------|-------------------|
| Subscription | Monthly recurring fee | Requires constant new content to retain players |
| Board/Card games | Unit sales at retail | Physical production costs change economics entirely |
| Advergames | Advertising revenue | Must balance ad placement with gameplay quality |
| Toy-game hybrids | Split between physical toy and digital game | Example: Skylanders — physical figures unlock digital content |

---

## Business Glossary

### General Game Business Terms

| Term | Definition |
|------|------------|
| **SKU** | Stock Keeping Unit. One unique inventory item. Each console port and language version is a separate SKU. Publishers measure output in SKUs/year |
| **COGS** | Cost of Goods Sold. Per-unit cost to actually produce the game |
| **Burn rate** | Monthly cost to keep the studio operating: salaries, benefits, rent, etc. |
| **Sold in** | Retailer buys from publisher (inventory transfer into stores) |
| **Sold through** | Consumer buys from retailer (actual purchase). The only number that truly matters |
| **Units sold** | Total purchases. Primary success metric for retail and direct download |
| **Breakeven** | Units sold needed before revenue covers total investment. Formula: Total Cost ÷ Revenue Per Unit. Example: $400K cost ÷ $5/unit = 80,000 units to break even |

### Free-to-Play Business Terms

| Term | Definition |
|------|------------|
| **Churn** | Percentage of players lost each month. Goal: minimize. High churn = retention crisis |
| **Cost of acquisition** | Average marketing spend to get one new player to download and play |
| **DAU** | Daily Active Users. Easiest F2P metric to measure. Bigger = better |
| **MAU** | Monthly Active Users. MAU/DAU ratio reveals engagement depth. If MAU ≈ DAU, same players return daily. If MAU >> DAU, high churn |
| **ARPU** | Average Revenue Per User (monthly). Total monthly revenue ÷ MAU |
| **ARPPU** | Average Revenue Per Paying User (monthly). Always higher than ARPU — isolates paying player behavior |
| **LTV** | Lifetime Value. Total money from one player over their entire play history. Determines how much you can safely spend on acquisition. If LTV = $5, spending $4 to acquire is reasonable; spending $6 is foolish |
| **K-factor** | Virality metric (borrowed from epidemiology). How many new players does each existing player bring in? High K-factor drastically reduces acquisition costs |
| **Whale** | Player who spends very large amounts on microtransactions. Can constitute majority of total revenue |

---

## Why This Matters for Designers

> "Form follows funding."

Business model decisions directly shape game design:
- Budget constraints determine scope and team size
- Monetization model determines what features get built
- Platform economics influence pricing strategy
- Marketing budgets affect discoverability and audience reach

The most powerful position: understanding both creative AND business sides well enough to explain why good design decisions **make more money**. When you can do this in terms money people understand and believe, you gain much more creative control.

**Strategy:** Learn this language fluently. When money people see you speaking their terms correctly, they respect your input. Speak it better than them, and they'll defer to your design judgment.
