# CV sources

- `Ruohan_Zhang_CV.yaml`: one-page English CV, published as `files/cv.pdf`.
- `Ruohan_Zhang_CV_full.yaml`: longer two-page English CV (adds the coursework
  project, full venue names, and all scholarships); not published.
- `Ruohan_Zhang_CV_zh.yaml`: one-page Chinese resume, published as
  `files/cv-zh.pdf`.
- `Ruohan_Zhang_CV_zh_full.yaml`: longer two-page Chinese resume (separate
  skills-first layout with two representative projects); not published.

Keep dates, publication records, links, and research results consistent across
versions. The one-page versions share the same order: education, research
experience, publications, skills, then honors and service. The Chinese resume
adds a headline with the target role and shows publication titles, venues,
author position, and links; full author lists remain in the YAML.

The Chinese resume uses one A4 page with 10 pt body text. Songti SC supplies
Chinese characters, and Charter supplies Latin text and numbers, matching the
English CV's serif style. Both fonts are available on macOS and embedded in the
PDF. The small `engineeringclassic/Preamble.j2.typ` override pairs the fonts
only for Chinese output.
Keep project descriptions grounded in the CV and repository's publication pages;
do not infer project leadership or invent project dates.

Use Python 3.12 or newer with `rendercv[full]==2.8`. From the repository root,
regenerate the Chinese PDF with:

```sh
rendercv render cv/Ruohan_Zhang_CV_zh.yaml \
  --output-folder /tmp/rendercv-zh \
  --pdf-path ../files/cv-zh.pdf \
  --dont-generate-png \
  --dont-generate-markdown
```

The PDF path is relative to the YAML source. Intermediate Typst files go to the
temporary output folder. The English PDF is built the same way from
`cv/Ruohan_Zhang_CV.yaml` with `--pdf-path ../files/cv.pdf`. Check that each PDF
still fits on one page before publishing.

Chinese downloads are configured in `_data/navigation.yml`, `_pages/about-zh.md`,
and `author_zh.cv` in `_config.yml`; the sidebar uses the localized CV when set.
