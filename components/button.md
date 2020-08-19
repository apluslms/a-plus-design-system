---
layout: component-detail
group: components

title: Buttons
description: A button is used to perform an action when the user clicks or touches it.
status: Beta

github_link: https://github.com/apluslms/a-plus-design-system/issues/1

variations:
- title: Button types
  description: There are three button styles with semantic meanings. Each view should have up to one "default" action and up to one "danger" action.
  pattern: buttons/button-types.html
- title: Sizes
  description: Sizes `-lg`, `-sm` and `-xs` are available for all buttons. These can be used to fit into the space available and the surroundings on the page. While these are _not_ Bootstrap buttons, the sizes are designed to match Bootstrap 3.
  pattern: buttons/button-sizes.html
- title: Assistive technology example
  description: If you have buttons which don't have unique text, but their purpose is clear in context (for example, they're inside table rows), use `.sr-only` to ensure they have discernable names for users of assistive technology.  
  pattern: buttons/button-at.html
---

## General guidelines

Buttons should always perform an action. An action might be "log in", "submit (an exercise)" or "save and continue later".

Carefully limit the number of different styles visible to users to ensure that the impact of the special styles isn't diluted.

Note that you need to choose both a style and a size. Both must be declared as separate classes. 

## Usage

| Button type     | Purpose                                                                          |
| --------------- |----------------------------------------------------------------------------------|
| Default         | Used at most once per "view" (see below). It should be the action we expect most users to use. |
| Danger          | Only for actions with serious, destructive effects. There should be very few of these (see below).  |
| Secondary       | All buttons which are neither "default" nor "danger"-styled.  |

Except where space is limited (for example, adding actions to rows of a table), stick to one size in one view. 

The default action should never be smaller than secondary or danger actions, but may be the same size.

### What is a view?

In most cases, a view is one web page, but there might be some exceptions:

- A modal window is one view and is distinct from the page it is on top of.
- An embedded exercise is one view, providing is has a clear border.
- If a button is needed inside an accordion or other collapsible section, the whole page, as is visible at any time, is one view. This means two different accordion panels can both have default action buttons if, and only if, they cannot be open at the same time. 

### What are "serious, destructive effects"?

A serious destructive effect is one which:

- **Removes something that is stored permanently** - cached data is temporary, so clearing a cache isn't removing anything stored permanently.
- **Removal can't be undone** - there's no way to quickly "undo" the action.

This means that _'log out'_, for example, should not have the danger style applied. 

Very few, if any, student-facing interfaces need this style.

In general, a good pattern is to use a secondary button to start the deletion, then show a confirmation, for example, in a modal or on a new page, which includes the danger button.

Use these as sparingly as possible. If you need multiple in one view, use secondary buttons with a confirmation step.

## Labels

Button labels tell users what will happen when they click the button. Use verbs that describe the action, such as _'Add'_ or _'Delete'_. Use sentence-style capitalisation (only the first word in a phrase and any proper nouns capitalised) and no more than three words for button labels.

If there are many buttons on the same page (for example, the buttons perform an action on an item which is represented by a row of a table), ensure they have distinctive labels for assistive technology users. You can acheive this using an `.sr-only` class.

## Should it be a link?

Buttons should not be used as part of navigation. If clicking a button opens a new page without performing any action (and without starting an action, as in the "confirmation page" example), use a text link instead. 

If something performs an action or starts an action, always use a button.