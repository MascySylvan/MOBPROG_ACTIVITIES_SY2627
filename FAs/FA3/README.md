# Formative Assessment 3: My Reading List

## Overview

Create a mobile application that helps someone keep track of their books. The user can add books they want to read, are currently reading, or have already finished, see them all in one place, update a book as they make progress, remove ones they no longer want, and get a quick summary of their reading. This builds on FA2 by letting the user **build up and manage their own list of information** while the app is running, instead of moving through a fixed set of screens.

---

## Requirements

### The Books
Each book the user adds should keep track of a few things, such as:
- The **title** and **author**.
- How many **pages** it has.
- A **rating** (for example, 1 to 5 stars).
- Its **genre** (for example, fiction, non-fiction, fantasy, biography).
- Its **reading status** — whether the user wants to read it, is reading it, or has finished it.

### The Main Screen
- Show the **list of books** the user has added.
- Each book in the list should clearly show its key details (title, author, genre, and current status).
- When there are no books yet, show a friendly message inviting the user to add one.
- Include a way to open a form for adding a new book (for example, a button in the top bar or a floating button).

### Adding a Book
- Opening the form should let the user enter each detail about the book — the title, author, pages, rating, genre, and status.
- The app should **check the information before saving it**. If something important is missing or doesn't make sense (an empty title, a page count that isn't a sensible number, a rating outside the allowed range), the app should let the user know and should **not** add the book.
- Once the information is valid, the new book should appear in the list right away.

### Updating and Removing
- The user should be able to **update a book's reading status** as they go — for example, moving a book from "reading" to "finished." The change should show on screen immediately.
- The user should be able to **remove a book** they no longer want on the list, and the list should update right away.

### A Reading Summary
- Somewhere on the main screen, show a short **summary of the user's reading that keeps itself up to date** as books are added, updated, or removed. For example:
  - how many books there are in total, and how many are finished versus still to read, or
  - how many books fall under each genre, or
  - the average rating of the books they've finished.
- The summary should always match the current list — adding, updating, or removing a book should change it.

### A Visual Chart
- Include a **simple visual chart** on the main screen that shows the user's reading at a glance — for example, bars comparing how many books fall under each genre or each reading status.
- The chart should be **drawn from the current list of books** and should **grow and shrink along with the data** as books are added, updated, or removed (not a fixed picture).
- It doesn't need to be fancy — a row of bars whose heights reflect the counts is enough.

### The Look and Feel (Theming)
- Give your app a **consistent look across every screen** — a chosen set of colors, text styles, and button styles that are set up once and applied everywhere, rather than restyling each screen by hand.
- This overall style should be **defined in one central place** when the app starts up, so the whole app picks it up automatically.
- The app bar, cards or list items, buttons, and text should all follow the same theme and look like they belong together.

---

## Code Structure

- Your code must be organized into **multiple files**, with each part of the app (the books' information, the main screen, the add-book form, and the list) kept in its own place.
- The pieces that get repeated — like a single book's row in the list, or the input form — should be **reusable components** that can work with whatever book information is given to them, instead of being written for one specific book.
- Avoid hardcoding all your values inside the components. Pass the information in rather than fixing it in place.
- Define any repeated or fixed values (like colors, sizes) as **constants** at the top of your file.

---

## Grading Criteria

| Criteria | Points |
|----------|--------|
| App launches and the main screen displays correctly | 5 |
| A book keeps track of several details (title, author, pages, rating, genre, status) | 5 |
| The user can add a book through the form, and it appears in the list right away | 5 |
| The app checks the information and rejects invalid entries with a message | 5 |
| A book's status can be changed and a book can be removed, with the list updating right away | 5 |
| A reading summary stays up to date as the list changes | 5 |
| A visual chart reflects the current books and updates as the list changes | 5 |
| The app has a consistent look and feel, set up in one central place | 5 |
| The book row and the form are reusable components that accept information passed in | 5 |
| Code is split across multiple files with constants used for fixed values | 5 |
| **Total** | **50** |

---

## Submission

- **Name your project** `fa3_my_reading_list_<secret code>`, replacing `<secret code>` with the secret code from the video lecture (for example, `fa3_my_reading_list_ABCD123`).
  - ⚠️ **This is required. Failing to follow it — a missing name, the wrong format, or the wrong code — results in a flat 25-point deduction from your total score.** Watch the video lecture to get the secret code.
- Submit your entire project folder.
- The app must run without errors.

---

## Tips

- Look at how we built our class activity, where we kept a list of items, added new ones through a form, removed them, and showed a running summary. The same approach is your guide for managing the reading list here.
- Think about what your app needs to remember while it runs — the books that have been added, and the details of each one.
- Build it up a step at a time: get the list showing first, then adding, then removing, then updating a book's status, then the summary, then the chart. Get each part working before moving to the next.
- Focus on making it work first (add a book, see it, update it, remove it, watch the summary and chart change), then polish the visuals.
