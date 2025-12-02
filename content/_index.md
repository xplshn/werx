---
title: "WERX Full Demo"
date: 2025-12-02
authors:
  - name: "xplshn"
    email: "anto@xplshn.com.ar"

#cover page is only visible in prints, press CTRL+P
cover_page: true
cover_style: "modern"
cover_logo: "/assets/lasFuerzasDelCielo.svg"
customField: "Custom content!"

toc: true
categories:
  - documentation
  - examples
tags:
  - shortcodes
  - mermaid
  - chartjs
  - d3js
---

# WERX Shortcodes and Extensions Demonstration

This article demonstrates all available shortcodes and special code blocks in the WERX Hugo theme.

## Preview Shortcode (prev)

The `prev` shortcode creates hover-activated popups for URL previews.

### Basic Preview with Image

{{< prev URL="https://xplshn.com.ar" IMG="/assets/xplshn.com.ar_02_12_2025.png" TEXT="View xplshn.com.ar" >}}

**Usage:**
```go
{{</* prev URL="https://xplshn.com.ar" IMG="/assets/xplshn.com.ar_02_12_2025.png" TEXT="View xplshn.com.ar" */>}}
```

### Preview without Iframe

{{< prev URL="https://github.com/xplshn" TEXT="GitHub.com/xplshn" NO_IFRAME="true" >}}

**Usage:**
```go
{{</* prev URL="https://github.com/xplshn" TEXT="GitHub.com/xplshn" NO_IFRAME="true" */>}}
```

### Minimal Preview (Metadata Only)

{{< prev URL="https://docs.gohugo.io" TEXT="Hugo Documentation" >}}

**Usage:**
```go
{{</* prev URL="https://docs.gohugo.io" TEXT="Hugo Documentation" */>}}
```

## Inline JavaScript Shortcode

{{< js >}}
console.log("WERX JS shortcode executed!");
document.addEventListener('DOMContentLoaded', function() {
  console.log("Hello from inline JS shortcode");
});
{{< /js >}}

**Usage:**
```go
{{</* js */>}}
console.log("WERX JS shortcode executed!");
document.addEventListener('DOMContentLoaded', function() {
  console.log("Page loaded with JS shortcode support");
});
{{</* /js */>}}
```

## Chart.js Shortcode

{{< chart height="400px" >}}
{
  "type": "bar",
  "data": {
    "labels": ["January", "February", "March", "April", "May"],
    "datasets": [{
      "label": "WERX Usage",
      "data": [12, 19, 3, 5, 2],
      "backgroundColor": "rgba(54, 162, 235, 0.2)",
      "borderColor": "rgba(54, 162, 235, 1)",
      "borderWidth": 1
    }]
  },
  "options": {
    "responsive": true,
    "scales": {
      "y": {
        "beginAtZero": true
      }
    }
  }
}
{{< /chart >}}

**Usage:**
```go
{{</* chart height="400px" */>}}
{
  "type": "bar",
  "data": {
    "labels": ["January", "February", "March", "April", "May"],
    "datasets": [{
      "label": "WERX Usage",
      "data": [12, 19, 3, 5, 2],
      "backgroundColor": "rgba(54, 162, 235, 0.2)",
      "borderColor": "rgba(54, 162, 235, 1)",
      "borderWidth": 1
    }]
  }
}
{{</* /chart */>}}
```

## D3.js Shortcode

{{< d3js >}}
// Simple D3.js example
d3.select("body")
  .append("div")
  .style("background-color", "lightblue")
  .style("padding", "10px")
  .style("margin", "10px")
  .text("D3.js shortcode working!");
{{< /d3js >}}

**Usage:**
```go
{{</* d3js */>}}
d3.select("body")
  .append("div")
  .style("background-color", "lightblue")
  .text("D3.js shortcode working!");
{{</* /d3js */>}}
```

## Special Code Blocks

WERX supports special fenced code blocks that render as interactive content.

### Mermaid Diagrams

{{< mermaid >}}
  graph TD
    A[WERX Theme] --> B[Shortcodes]
    A --> C[Render Hooks]
    B --> D[prev]
    B --> E[js]
    B --> F[chart]
    B --> G[d3js]
    C --> H[mermaid]
    C --> I[inlineChartJS]
    C --> J[inlineJS]
{{< /mermaid >}}

**Usage:**
```go
{{</* mermaid */>}}
  graph TD
    A[WERX Theme] --> B[Shortcodes]
    A --> C[Render Hooks]
    B --> D[prev]
    B --> E[js]
    B --> F[chart]
    B --> G[d3js]
    C --> H[mermaid]
    C --> I[inlineChartJS]
    C --> J[inlineJS]
{{</* /mermaid */>}}
```

## Math Typesetting

WERX includes MathJax support for mathematical expressions.

Inline math: $E = mc^2$

Block math:
$$\int_{-\infty}^{\infty} e^{-x^2} dx = \sqrt{\pi}$$

**Usage:**
```markdown
Inline: $E = mc^2$

Block:
$$\int_{-\infty}^{\infty} e^{-x^2} dx = \sqrt{\pi}$$
```

## Code Highlighting

```go
package main
import "fmt"
func main() {
    fmt.Println("WERX Hugo Theme")
}
```

**Usage:**
````markdown
```go
package main
import "fmt"
func main() {
    fmt.Println("WERX Hugo Theme")
}
```
````

## Summary

This article demonstrated all WERX features with both their rendered output and the code needed to use them. Each feature integrates with WERX's conditional loading system for optimal performance.
