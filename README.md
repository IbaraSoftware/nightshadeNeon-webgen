# nightshadeNeon-webgen
Minimal format converter that conforms to our nightshadeNeon theme style. Converts markdown to HTML.

`nightshadeNeon-webgen` is used by members of the Ibara team to generate minimal web pages and wiki entries that follow our nightshadeNeon theme and structure.

It allows you to write everything down in simple Markdown format, and then convert it to HTML with a simple tool. You can then place those HTML pages anywhere you need.

It uses `zenity` to present you with options, and `pandoc` in the background to handle the file conversion.

Styling is done by applying a defined stylesheet (`style.css`) at conversion time.
