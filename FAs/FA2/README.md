# Formative Assessment 2: Simple Quiz App

## Overview

Create a mobile application that lets the user take a short quiz. The app should move through a few screens, react when the user taps an answer, and show a final score at the end. This builds on FA1 by making your app **interactive** instead of just a single static screen.

---

## Requirements

### The Flow
Your app should have three screens that the user moves through in order:

1. **Start Screen** — a welcome screen with a button to begin the quiz.
2. **Question Screen** — shows the questions one at a time.
3. **Result Screen** — shows how many the user got right.

### Start Screen
- Show a title or welcome message.
- Include a button that starts the quiz and takes the user to the first question.

### Question Screen
- Show **one question at a time**.
- Below the question, show the answer choices as buttons the user can tap.
- When the user taps an answer:
  - Keep track of whether they got it right.
  - Move on to the next question.
- After the last question, the app should automatically show the Result Screen.

### Result Screen
- Show the user's final score (for example, "You got 3 out of 5 correct").
- Include a button to **restart** the quiz. Restarting should bring the user back to the Start Screen and start the score over from zero.

---

## The Questions

- Your app should have **at least 4 questions**.
- Each question should have its own text, a list of answer choices, and a correct answer.
- Keep your questions in a **separate file** as a list, instead of writing them directly inside the screens.

---

## Code Structure

- Your code must be organized into **multiple files** (screens, questions data, and reusable components in their own files).
- The answer buttons should be a **reusable component** — one that can show any answer text passed into it, without editing the component itself.
- Avoid hardcoding all your values inside the components. Pass data in through **parameters**.
- Define any repeated or fixed values (like colors, sizes) as **constants** at the top of your file.

---

## Grading Criteria

| Criteria | Points |
|----------|--------|
| App launches and the Start Screen displays correctly | 5 |
| Start button moves the user to the first question | 5 |
| Answer choices come from a list in a separate file (not hardcoded in the screen) | 5 |
| Tapping an answer keeps score and moves to the next question | 10 |
| Result Screen shows the correct final score | 5 |
| Restart button returns to the Start Screen and resets the score | 5 |
| Answer button is a reusable component that accepts parameters | 5 |
| Code is split across multiple files with proper imports | 5 |
| Constants are used for fixed values | 5 |
| **Total** | **50** |

---

## Submission

- Submit your entire project folder.
- The app must run without errors.

---

## Tips

- Look at how we built our class activity, where the app switched between a home screen and a profile screen. The same approach is your guide for moving between screens here.
- Think about what your app needs to remember while it runs — which question you're on, and how many the user got right.
- Focus on making the flow work first (start, answer questions, see the score, restart), then polish the visuals.
