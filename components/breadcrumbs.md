---
layout: component-detail
group: components

title: Breadcrumbs
description: Breadcrumbs are a series of links which show the user which page they are viewing within a course.
status: Legacy

github_link: https://github.com/apluslms/a-plus-design-system/issues/2

variations:
- title: Basic Usage
  description: The user is viewing a page within a module. 
  pattern: breadcrumbs/basic.html
---

## General guidelines

The breadcrumbs should always be visible when the user is viewing a child page inside a course. They don't need to be used if the user is outside of a course.

The breadcrumbs start from the index page of the course, not the A+ front page. The top-level item is always the course code. 

The final breadcrumb should always be the currently visible page. 

## Known Issues

- Colour contrast of both links and the currently active element.
- Should the top level be the front page?