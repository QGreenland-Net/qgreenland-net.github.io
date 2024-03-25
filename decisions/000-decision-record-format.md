---
title: "Standard format for decision records"
number: "0"
date: "TBD"
authors:
  - {{<var people.matt-fisher >}}
  - {{<var people.trey >}}
status: "Pending"
---

## Context

It's hard to remember past decisions, especially across organizations and when needs are
in tension. The consequence of forgetting the rationale for a past decision is that
someone must choose between blindly accepting the decision or blindly changing it,
neither of which are optimal outcomes.

[Michael Nygard's 2011 blog post Documenting Architecture Decisions](https://www.cognitect.com/blog/2011/11/15/documenting-architecture-decisions)
describes additional context for this problem as well as a method for recording
architecture decisions to help mitigate the problem.

That model for architecture decision records can apply to decisions of any kind.


## Decision

We will collect decisions that are significant to any subset of our team in this
repository following the methodology of this decision record.

* DRs are numbered sequentially from 0. Numbers are not re-used.
* Filename pattern: `decisions/NNN-decision-record-title.md`.
* A DR describes "a set of forces and a single decision in response to those forces"
  (NOTE: the same forces may appear in multiple DRs).
* If a decision is reversed, the reversed decision is kept and marked with status
  "superceded". The accepted superceding decision is linked from the superceded
  decision.
* Documents should be written "as if it is a conversation with a future developer." Use
  full sentences organized into paragraphs. Use bullets to visually organize
  information, "not as an excuse to write sentence fragments."


### Decision records include:

- **Title:** Use short noun phrases, e.g. "DR #0: Standard format for decision records"
- **Context:**
    > This section describes the forces at play, including technological, political,
    > social, and project local. These forces are probably in tension, and should be
    > called out as such. The language in this section is value-neutral. It is simply
    > describing facts.
- **Decision**: What was decided.
    > This section describes our response to these forces. It is stated in
    > full sentences, with an active voice. "We will..."
- **Status:** What is the current status of this decision?
    * "Proposed": An idea.
    * "Accepted": We agree.
    * "Deprecated": No longer applies.
    * "Superceded": Another decision applies instead; that decision must be linked from
      the superceded decision.
- **Consequences:** What will happen as a result?
    > This section describes the resulting context, after applying the decision. All
    > consequences should be listed here, not just the "positive" ones. A particular
    > decision may have positive, negative, and neutral consequences, but all of them
    > affect the team and project in the future.
- **Consent:** A non-exhaustive list of who consents to the decision.

_Quotations above are credited to [Michael Nygard. Documenting Architecture Decisions.
2011.](https://www.cognitect.com/blog/2011/11/15/documenting-architecture-decisions)_


## Status

{{< meta status >}}


## Consequences

* All future decision record entries will follow the agreed-upon format.
* Decision records will be more thorough.
* Decision records will be more readable.
* Decision records will take longer to author.


## Consent

- {{<var people.matt-fisher.name >}}
- {{<var people.trey.name >}}
