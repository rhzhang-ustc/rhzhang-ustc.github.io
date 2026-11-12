# CV sources

- `Ruohan_Zhang_CV.yaml`: English CV, published as `files/cv.pdf`.
- `Ruohan_Zhang_CV_zh.yaml`: Chinese resume for research and engineering jobs in
  China, published as `files/cv-zh.pdf`.

Keep dates, publication records, links, and research results consistent across
versions. The Chinese resume is independently edited for job applications; its
section order and selection of content do not need to match the English CV.
It leads with education, relevant skills, and two representative projects,
emphasizing personal contributions, experimental results, and authorship. Other
research, selected papers, major awards, and academic service follow on page two.
The older coursework project and secondary scholarship are omitted from this
edition; they remain in the English source. Full author lists remain in the YAML,
while the PDF shows publication titles, venues, author position, and links.

The Chinese resume uses two A4 pages with 10 pt body text. Songti SC supplies
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
temporary output folder. Review both PDF pages before publishing.

Chinese downloads are configured in `_data/navigation.yml`, `_pages/about-zh.md`,
and `author_zh.cv` in `_config.yml`; the sidebar uses the localized CV when set.
