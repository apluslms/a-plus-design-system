---
layout: component-detail
group: components

title: Error summary
description: An error summary is used to present validation errors of a form.
status: Beta

github_link: https://github.com/apluslms/a-plus-design-system/issues/10

variations:
- title: Basic use
  description: Use this component at the top of a page (or an exercise-view) to summarise any errors a user has made when submitting a form.
  pattern: error-summary/basic.html
---

## General guidelines

- You should always present the status of the submission or alternatively a heading indicating that there was a problem. For exercises the heading "Submission failed" has been generally used.  

- Provide the name of the field with the error and preferably a link to the erroneous field. Add the error message from the system after the name of the field.

- Move keyboard focus to the error summary.

- Use the same error message for the field and the error summary, for instance "Input should be a number".

- Make your error messages clear and concise. 

## Known issues

- The current error summary does not provide links to the specific fields which have errors. 
- There is no consistent heading text yet for other types of forms than exercise forms.

## Location of the error summary

Use at the top of a view. In most cases, a view is one web page, but there might be some exceptions:
- A modal window is one view and is distinct from the page it is on top of.
- An embedded exercise is one view, providing is has a clear border.