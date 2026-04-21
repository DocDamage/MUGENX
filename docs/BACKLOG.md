# MUGEN X ENGINE - Technical Backlog & Future Roadmap

This document tracks technical debt, mock implementations that need replacement, and planned features for future updates.

## 🔴 Critical Technical Debt (High Priority)
- [ ] **Automated SFF Compilation**:
    - *Current State*: Python scripts generate raw PNGs. Users must manually compile them into `.sff` files using Fighter Factory.
    - *Goal*: Integrate a CLI tool (like `sprmake2` or a Python library) to automatically compile `.sff` files during generation.
- [ ] **Ghost AI Replay Logic**:
    - *Current State*: `ghost_ai.lua` records inputs to a table.
    - *Goal*: Implement the playback logic to have the AI mimic the recorded patterns dynamically.
- [ ] **Real Match Result Logging**:
    - *Current State*: `logger.lua` saves basic stats to JSON.
    - *Goal*: Expand this to track detailed frame data, move usage frequency, and heatmaps for the Auto-Balancer.

## 🟡 Feature Expansions (Medium Priority)
- [x] **LLM Integration for Narrative**:
    - *Current State*: `storyteller_llm.py` connects to local/remote LLM APIs.
    - *Goal*: Connect to an external API (OpenAI/Gemini/Local LLM) to generate context-aware dialogue and stories on the fly.
- [ ] **Asset Server Connection**:
    - *Current State*: `uploader.py` mocks the network request.
    - *Goal*: Implement actual HTTP POST requests to a cloud storage bucket or community server.
- [ ] **Dynamic Trials System**:
    - *Current State*: `trials.lua` has hardcoded combo sequences.
    - *Goal*: Load trial definitions from external `.json` or `.def` files so users can share trial packs.

## 🟢 Polish & "Nice to Have" (Low Priority)
- [ ] **GUI for Move Creator**:
    - *Current State*: CLI-based input.
    - *Goal*: A simple Tkinter or Web UI to visualize hitboxes and frame data while creating moves.
- [ ] **Advanced Music Generation**:
    - *Current State*: Simple waveform synthesis.
    - *Goal*: Integrate a more robust library (like MIDI generation or a neural audio model) for higher quality tracks.
- [ ] **Tag Team Super Combos**:
    - *Current State*: Passive stat buffs.
    - *Goal*: Implement "Team Supers" where both characters attack simultaneously if Synergy is active.

## 🧪 Experimental
- [ ] **Vision-Based AI**:
    - Train a reinforcement learning agent that "sees" the screen pixels instead of reading memory values.
