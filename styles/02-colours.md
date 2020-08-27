---
layout: page
type: detail
title: Colours 
group: styles
permalink: /guidelines/colours.html
description: Allowing consistent customisation. 

---

A+ uses SASS for CSS preprocessing.

This means that colours can be defined once, and used in any component.

Components should not define their own colours, but should always refer to colours as named variables.

## Brand Colours

Each institution using A+ can customise the variables in `assets/sass/colors/_theme.scss` to match their own corporate identity.

The defaults are inspired by the Aalto University corporate identity.

{% include color-preview.html name="$aplus-brand-primary" hexcode="#005EB8" %}
{% include color-preview.html name="$aplus-brand-secondary" hexcode="#EF3538" %}

Use `primary` in most cases, unless you need to use multiple colours in one component.

These can be any colour, so should never be used for their semantic meaning. 

## Functional Colours

These colours can be tweaked to match local customs, but are generally designed to be used for a specific function or semantic meaning.

They are also applied to Bootstrap as the colour with the matching name.

`success` and `danger` have clear, semantic meanings. They can be used when needed, but avoid overusing them, so that they remain especially striking to users.

Recent developments have used "danger' to mean "something is wrong that you can fix", like form validation errors and rejected submissions, but _not_ "you tried this exercise but got low points".

`warning` and `info` are maintained for legacy purposes. They use darkened versions of Bootstrap 3's default colours. Since it's best to generally avoid making the interface overwhelmingly colourful, it might be sensible to limit the new uses of these as much as possible.

{% include color-preview.html name="$aplus-success" hexcode="#00803c" %}
{% include color-preview.html name="$aplus-danger" hexcode="#a50000" %}
{% include color-preview.html name="$aplus-info" hexcode="#1d7792" %}
{% include color-preview.html name="$aplus-warning" hexcode="#a6670e" %}