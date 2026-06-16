# 简历生成参考规则

## 历史简历处理

1. Extract facts from PDF/Word/Markdown.
2. Diagnose issues: unclear story, weak target-role fit, project list without results, sensitive internal terms, missing metrics, redundant wording.
3. Ask focused follow-ups only for the most important gaps.
4. Rebuild the resume around the target role and candidate positioning.

## 项目经历写法

Use one of these structures depending on density:

- Background: why this project mattered.
- Role: what the candidate owned.
- Key work: 2-4 grouped directions, not scattered tasks.
- Results: business, engineering, stability/performance, efficiency, risk reduction, scale, or collaboration outcomes.

Avoid vague filler such as “responsible for analysis, design, and implementation” unless paired with concrete ownership and results.

## 敏感信息处理

When experience involves internal systems, security details, unreleased strategies, or confidential numbers:

- abstract internal names into capability descriptions
- avoid exploit details, exact internal controls, and private links
- keep business value and technical nature understandable
- ask whether data can be disclosed before using exact numbers

## 照片处理

如果用户提供照片路径或图片地址，将照片放在姓名区域附近，优先放在姓名和联系方式右侧。照片要保持专业观感，使用合适裁剪，确认它在 HTML、PNG 预览图和 PDF 中都能正常显示。如果用户没有提供照片，不要预留空头像位置。

## 完整版简历布局

Default to A4 for formal delivery. Unless the user explicitly requests a different layout/order, use this core section order:

- professional header with contact info
- work experience first for experienced/social-hire candidates
- education experience
- personal profile
- project experience with clear dividers
- skills grouped by domain, plus optional core strengths/team impact/awards when useful
- skill lists must be categorized, for example: programming languages, AI/LLM frameworks, backend/frontend frameworks, data/storage, cloud/DevOps, security, product/management/collaboration, and tools; each category should include a short capability-oriented description instead of only stacked keywords
- dark enough text and lines for print/readability

For campus, intern, or other early-career candidates, adjust only when their stage clearly benefits from education-first ordering or the user asks for it.

## 精华亮点 PDF 响应式布局

Concise highlight versions must be generated as separate mobile and PC versions unless the user explicitly requests only one. Goal: quickly communicate candidate positioning, core achievements, and representative projects in the target viewing context.

### 手机版预览 PDF 布局

Use for phone reading and sharing. The HTML viewport and exported PDF must use a mobile-sized page, such as 390-430px wide. Do not export the mobile layout onto A4 paper with a narrow centered column or large blank areas. The card should fill the mobile page width, and long content should naturally continue across mobile pages.

Recommended structure:

1. Top card: name, target role/current positioning, one-line value proposition.
2. Key metrics board: 2-4 high-impact numbers.
3. Core strengths: 3-4 capability tags with one-sentence explanations.
4. Core projects: up to 3 cards, each with background, key work, and results.
5. Closing/contact area.

Recommended visual rules:

- if the user provides a local HTML path or `file://...` URL as the UI reference, inspect and reuse its broad visual language: layout rhythm, typography, spacing, cards, colors, borders, and hierarchy; do not copy irrelevant content
- warm white or clean white background
- deep text color; avoid pale gray for body text
- clear separators; avoid over-decorating
- optional warm hand-drawn decorations, but never overpower resume content
- avoid large neon gradients or marketing-poster style unless explicitly requested

### PC 版精华亮点 PDF 布局

Use for desktop browsing, web portfolio pages, and wider-screen sharing. The page should use a desktop width, such as 1100-1280px, and the main content should fill the available visual area with columns/cards where useful. Do not reuse the narrow mobile card centered on a wide page. Export the PDF with a matching wide page size, no browser header/footer, and no large unused margins.

PDF pagination rules learned from prior work:

- each page top must have enough spacing
- page header/footer area should keep the same background/pattern; avoid abrupt white blocks
- disable browser default headers/footers
- avoid a mostly empty last page if content can continue on the previous page
- avoid splitting project sections awkwardly
- verify first, middle, and final pages with screenshots or rendered images

## 文件命名

Use user-provided name when available:

- `姓名-社招简历.md/html/pdf`
- `姓名-亮点版简历.md/html/pdf`

If name is unknown:

- `resume.md/html/pdf`
- `resume-highlight.md/html/pdf`

Default output directory is the user-specified directory, otherwise current working directory. Do not overwrite existing files unless the user explicitly approves overwriting.
