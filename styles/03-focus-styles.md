---
layout: page
type: detail
title: Focus Styles 
group: styles
permalink: /guidelines/focus-styles.html
description: Ensuring consistent keyboard navigability

---

Some users use a keyboard as their primary means of interacting with web pages. These users should be able to "jump" from interactive element to interactive element using the "tab" key. Our focus styles show these users which element is currently focused.

It's important that these have sufficient contrast, and also stand out well against any of their surrounding elements. For this reason, we have a colour which is not allowed to be used in any other elements.

{% include color-preview.html name="$aplus-focus" hexcode="#ffdd00" %}
{% include color-preview.html name="$aplus-foreground" hexcode="#000000" %}

Text shown on top of this background should be in the `$aplus-foreground` colour (typically solid black) for high visibility. 

## Implementing A+ focus styles
### Generic focus "ring"

By default, all focusable `a`, `input`, `select` and `div` elements receive the default focus styles when they receive keyboard focus (using the `.focus-visible` polyfill from WICG). 

The default focus styles, or `focus-with-outline-only`, adds a ring around the element. This is good for bigger elements, and elements with colours which would make re-colouring the background difficult.

The mixin is included like so:

```
.your-interactive-element {
	@include focus-with-outline-only;
}
```

### Text and small element focus styles

Links in text, buttons and other elements which normally have backgrounds, should use the `focus-with-background-and-color` mixin. 

This adds a solid background, and colours the text black, while in focus. 

You can use it like so:

```
.your-interactive-element {
	@include focus-with-background-and-color;
}
```

## Testing focus styles

If you implement anything interactive, be sure to test that:

1. It's possible to reach and activate everything interactive using only the tab key.
2. It's easy to spot which element is in focus, even if you're using Chrome's "Blurred Vision" option from the "Emulate Vision Deficiencies" menu (under "Rendering" in Developer Tools).


