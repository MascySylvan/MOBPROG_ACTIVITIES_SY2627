# Formative Assessment 1: Personal Profile Card

## Overview

Create a mobile application that displays a personal profile card on screen. The card should look visually polished and showcase your ability to build reusable UI components.

---

## Requirements

### Screen Layout
- The screen should have a solid background color of your choice.
- A card should be centered on the screen.

### The Card
- The card must have a gradient background using at least two colors.
- The card must have rounded corners.
- The gradient direction and colors are your choice.

### Profile Information (inside the card)
- Display your **full name** (large text, bold)
- Display your **course/program** (medium text)
- Display a **short bio or motto** (smaller text, italic or lighter color)
- These should be stacked vertically with some spacing between them.

---

## Code Structure

- Your code must be organized into **at least 3 separate files**.
- Each file should contain a **reusable component** — meaning the component can accept different values through its constructor without needing to edit the component's source code.
- Avoid hardcoding all values inside your components. Use **parameters** to pass data in.
- Define any repeated or fixed values (like colors, sizes) as **constants** at the top of your file.

---

## Grading Criteria

| Criteria | Points |
|----------|--------|
| App launches and displays correctly | 5 |
| Card has a gradient background with rounded corners | 10 |
| Profile info is displayed with clear visual hierarchy (name stands out, bio is secondary) | 10 |
| Components are reusable — they accept parameters, not just hardcoded values | 10 |
| Code is split across multiple files with proper imports | 5 |
| Constants are used for fixed values | 5 |
| Code is clean and readable | 5 |
| **Total** | **50** |

---

## Submission

- Submit your entire project folder.
- The app must run without errors.

---

## Tips

- Look at how we built our class activity. The structure and approach there is your guide.
- Think about what makes a component reusable — what should be passed in vs. what can stay fixed.
- Focus on making it work first, then polish the visuals.
