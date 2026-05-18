# Immediately lose Elven Parliament after gaining it (EU5)
**Tags:** Sev 3  - Minor Bug, EU5
**Source:** [View on Discord](https://discord.com/channels/1179053540161880074/1504499145099051220)
---
## Report
**.donsin** · *2026-05-14*
Start as a non-elven country without the Feudalism Advance e.g. Qusqu. After the event chain changes your parliament type to Eleven Parliament, the game changes the parliament type to No Parliament. Looking at the files, I found that Elven Parliament requires Allow Estate Parliament (Feudalism Advance).
I am not sure if that is intended or a bug. I "fixed" it by removing modifier:allow_estate_parliament = yes from the elven_parliament requirements
