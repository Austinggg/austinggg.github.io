---
layout: page
title: experience
permalink: /experience/
description: Research appointments and collaborations.
nav: true
nav_order: 2
---

{% for entry in site.data.experience %}

## {{ entry.company }}

**{{ entry.position }}** · {{ entry.location }}  
{{ entry.start_date | append: '-01' | date: "%b %Y" }} — {% if entry.end_date == 'present' %}Present{% else %}{{ entry.end_date | append: '-01' | date: "%b %Y" }}{% endif %}

{{ entry.summary }}

{% for highlight in entry.highlights %}

- {{ highlight }}
  {% endfor %}
  {% endfor %}
