# Formative Assessment 4: Reverse Engineering an App

## Overview

For this assessment you will **rebuild an existing app by studying how it looks and behaves**. I have deployed a finished app here:

**https://base-app-mascy.web.app/**

Your job is to recreate it as a **Flutter mobile app**, as close to the original as you can. I will not be giving out the source code, and I will not be telling you what is inside the app. Everything you need has to come from using the app yourself.

This builds on everything from FA1 to FA3. Part of the challenge is figuring out which of the things you have learned are needed to rebuild what you see.

> ⚠️ **This is a mobile app.** I deployed the original on the web only so that everyone can open it easily. Your version must run on an **Android emulator, an iOS simulator, or a real phone**, and it must fit a phone screen. To see how the original looks on a phone, open it in Chrome, press `F12`, and turn on the **device toolbar** (`Ctrl + Shift + M`) to pick a phone size.

---

## Exploring the App

Before you write any code, explore the original thoroughly. It is up to you to find every screen and every feature. Anything you miss is something your version will be missing too.

- Open every screen you can reach, and look for ones that are not obvious.
- Press every button and icon, and fill in every form.
- Notice what text, labels, icons, colors, and buttons appear on each screen, and where.
- Notice how the app reacts when things go right, and when they go wrong.

---

## Requirements

### Match the Original
- Recreate **every screen** you find in the original.
- Each screen should be **as close as possible** to the original: the same layout, text, fields, icons, buttons, and colors.
- If the original uses an image you cannot get, you may use a similar one, as long as it is placed and sized the same way.

### Make It Work
- Everything in your app should **do what it does in the original**, not just look like it.
- Whenever the original checks what the user entered, your app should check it the same way and show the same kinds of messages.
- Whenever information on screen changes in the original, it should change the same way in yours.
- Moving between screens should follow the same flow as the original.

### Where the Data Is Kept
- My app may save its information online. **You are not required to connect to any online server.**
- Keeping your information **in memory while the app runs** (the way we did in class) is accepted. What I will grade is that your app behaves the same way as the original while it is open.

### The Look and Feel (Theming)
- Set up your colors, text styles, and button styles **once, in one central place** when the app starts, so every screen picks them up automatically.

---

## Code Structure

- Your code must be organized into **multiple files**. Keep each screen, each form, and each kind of information the app handles in its own place.
- Parts that repeat should be **reusable components** that accept the information passed to them.
- Avoid hardcoding values inside your components. Pass the information in instead.
- Define any repeated or fixed values (like colors, sizes, and spacing) as **constants**.

---

## Grading Criteria

| Criteria | Points |
|----------|--------|
| The app runs on a phone or emulator without errors and fits a phone screen | 5 |
| Every screen and feature in the original is present in your app | 5 |
| The layout and content of each screen match the original (text, fields, icons, buttons, and where they are placed) | 5 |
| The overall look and feel matches the original and is set up in one central theme | 5 |
| Moving between screens follows the same flow as the original | 5 |
| Every button, form, and control does what it does in the original | 5 |
| User input is checked the same way as the original, with the same kinds of messages | 5 |
| Information on screen updates the same way and as quickly as in the original | 5 |
| The app behaves like the original while it is busy, when there is nothing to show, and when something goes wrong | 5 |
| Code is split across multiple files with reusable components and constants for fixed values | 5 |
| **Total** | **50** |

### How Each Criterion Is Scored

I will check each criterion by putting your app side by side with the original.

| Score | Meaning |
|-------|---------|
| 5 | Practically the same as the original. It looks the same and behaves the same. |
| 4 | Clearly the same, with only small differences (a slightly different color, spacing, or message). |
| 3 | Recognizable and mostly working, but with noticeable differences or a missing detail. |
| 2 | Only partly done. Major parts are different, missing, or not working. |
| 1 | Attempted, but very different from the original or barely working. |
| 0 | Missing, or the app crashes when this part is used. |

---

## Submission

- **Name your project** `fa4_reverse_engineering`.
- Submit your entire project folder.
- The app must run without errors.

---

## Tips

- **Explore before you code.** Take screenshots of everything you find and keep them open while you work.
- **Try to break things.** Do what a careless user would do, and write down how the app reacts. Your app should react the same way.
- **Never enter your real personal information or a real password** into the original app. Make up values just for this activity.
- **Draw the flow first.** Before writing any code, sketch which screen leads to which, and what each button does.
- Look back at our class activities. You have already built most of the building blocks you will need.
- Build it one screen at a time. Get each screen working before you move to the next, then go back and polish the details until it matches.
