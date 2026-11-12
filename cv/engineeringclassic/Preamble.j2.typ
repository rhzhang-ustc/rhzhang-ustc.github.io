{# Keep RenderCV's native layout; change only the Chinese font fallback lists. #}
{% set original %}{% include "typst/Preamble.j2.typ" %}{% endset %}
{% set preamble = namespace(text=original) %}
{% if locale.language_iso_639_1 == "zh" %}
{% for field in ["body", "name", "headline", "section-titles"] %}
{% set key = "typography-font-family-" ~ field %}
{% set preamble.text = preamble.text.replace(key ~ ': "Songti SC",', key ~ ': ("Charter", "Songti SC"),') %}
{% endfor %}
{% endif %}
{{ preamble.text }}
