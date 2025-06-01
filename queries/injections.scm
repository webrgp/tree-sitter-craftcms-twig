((content) @injection.content
 (#set! injection.language "html")
 (#set! injection.combined))

; CSS injection for Craft CMS {% css %} blocks
((craft_css
  (source_elements
    (content) @injection.content))
 (#set! injection.language "css"))

; JavaScript injection for Craft CMS {% js %} blocks
((craft_js
  (source_elements
    (content) @injection.content))
 (#set! injection.language "javascript"))

; JavaScript injection for Craft CMS {% script %} blocks
((craft_script
  (source_elements
    (content) @injection.content))
 (#set! injection.language "javascript"))
