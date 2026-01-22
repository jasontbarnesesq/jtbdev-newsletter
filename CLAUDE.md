# CLAUDE.md - AI Assistant Guide for jtbdev-newsletter

## Project Overview

**Repository**: jasontbarnesesq/jtbdev-newsletter
**Purpose**: Personal Weekly Newspaper/Newsletter project powered by Claude AI
**Current State**: Static HTML snapshot of Claude conversation
**Primary File**: `index.html` (1.2MB minified HTML export from Claude.ai)

This repository appears to be a working space for developing a personal newsletter or newspaper project using Claude AI assistance. The current state contains an exported HTML snapshot of a Claude.ai conversation.

---

## Repository Structure

```
jtbdev-newsletter/
├── .git/              # Git repository metadata
├── index.html         # Exported Claude.ai conversation (1.2MB, minified)
└── CLAUDE.md          # This file - AI assistant guide
```

### Key Files

- **index.html**: A complete snapshot of a Claude.ai conversation interface, saved as static HTML. This file is 1.2MB and contains the full React application state from a Claude session.

---

## Development Workflow

### Current Workflow Pattern

Based on git history, the development pattern appears to be:
1. Work with Claude to develop newsletter content/features
2. Export/save HTML snapshots of conversations
3. Upload files to repository
4. Iterate and refine

### Git Branching Strategy

- **Feature branches**: Use branches prefixed with `claude/` for AI-assisted development
- **Current branch**: `claude/claude-md-mkpwlvpr3z5ndgf4-Y5N6z`
- **Push protocol**: Always push to `claude/` prefixed branches with session ID suffix

### Recent Activity

Recent commits show:
- `757e974`: Delete index of Personal Weekly Newspaper - Claude.html
- `164925a`: Add files via upload
- `5390e64`: Add files via upload
- `1953dae`: Delete index.html
- `0ff5eb6`: Add files via upload

Pattern suggests iterative refinement of HTML exports.

---

## AI Assistant Guidelines

### When Working on This Repository

1. **Understand the Context**
   - This is a personal newsletter/newspaper project
   - The owner is exploring newsletter creation with AI assistance
   - Content appears to be saved conversations and exports

2. **File Operations**
   - The `index.html` file is a large (1.2MB) minified export
   - Avoid reading the entire file at once; use targeted searches
   - When analyzing HTML, use grep/search with specific patterns
   - File is 100 lines but highly minified (multiple MB)

3. **Commit Practices**
   - Use descriptive commit messages
   - Follow pattern: "Add/Update/Delete [file description]"
   - Example: "Add newsletter template HTML"
   - Keep commits atomic and focused

4. **Branch Management**
   - Work on `claude/` prefixed branches
   - Branch names should include session identifiers
   - Always push with: `git push -u origin <branch-name>`
   - Retry failed pushes up to 4 times with exponential backoff

---

## Project Purpose & Goals

### Inferred Purpose

Based on repository name and commit history, this project is for:
- Creating a personal weekly newsletter or newspaper
- Using Claude AI for content generation and curation
- Experimenting with newsletter formats and templates
- Potentially building towards an automated newsletter system

### Potential Next Steps

If asked to develop this project, consider:

1. **Content Development**
   - Newsletter templates (HTML/Markdown)
   - Content generation workflows
   - Topic curation systems

2. **Technical Infrastructure**
   - Move beyond static HTML exports
   - Create proper newsletter templates
   - Set up build/deployment pipeline
   - Email distribution system

3. **Organization**
   - Separate content from presentation
   - Version control for newsletter editions
   - Archive system for past issues

---

## Technology Stack

### Current Stack
- **Format**: Static HTML export from Claude.ai
- **Version Control**: Git
- **Platform**: GitHub

### Recommended Stack (If Expanding)
- **Templates**: HTML/Markdown with template engine (Handlebars, Jinja2)
- **Build Tools**: Node.js ecosystem (if going web-based)
- **Email**: SendGrid, Mailchimp, or similar (for distribution)
- **Static Site Generator**: Eleventy, Jekyll, Hugo (for publishing)
- **Styling**: Tailwind CSS, vanilla CSS (for email compatibility)

---

## Common Tasks

### Analyzing the Current HTML Export

```bash
# Search for specific content
grep -i "keyword" index.html

# Count file size
ls -lh index.html

# View first/last lines
head -n 20 index.html
tail -n 20 index.html
```

### Creating Newsletter Templates

When creating newsletter content:
1. Use semantic HTML for email compatibility
2. Inline CSS for email clients
3. Test across email clients (Gmail, Outlook, Apple Mail)
4. Keep images hosted externally
5. Include plain-text fallback

### Git Operations

```bash
# Check current status
git status

# Create and switch to feature branch
git checkout -b claude/feature-name-session-id

# Stage and commit changes
git add .
git commit -m "Descriptive commit message"

# Push to remote
git push -u origin claude/feature-name-session-id
```

---

## Code Conventions

### HTML/Email Development

When developing newsletter HTML:
- Use tables for layout (email client compatibility)
- Inline all CSS styles
- Avoid JavaScript (not supported in email)
- Use absolute URLs for images and links
- Test with email testing tools (Litmus, Email on Acid)
- Keep width under 600px for email clients
- Use web-safe fonts or include fallbacks

### File Naming

- Newsletter issues: `newsletter-YYYY-MM-DD.html`
- Templates: `template-[type].html`
- Assets: `assets/images/`, `assets/css/`
- Archives: `archive/YYYY/`

### Content Organization

Suggested structure for expansion:
```
jtbdev-newsletter/
├── templates/          # Newsletter templates
│   ├── weekly.html
│   └── special.html
├── content/           # Newsletter content
│   └── YYYY-MM-DD/   # Date-based folders
├── assets/            # Images, CSS, etc.
├── archive/           # Published newsletters
├── scripts/           # Build/send scripts
└── docs/              # Documentation
```

---

## Security Considerations

1. **API Keys**: Never commit API keys (SendGrid, Mailchimp, etc.)
2. **Email Lists**: Don't commit subscriber email lists
3. **Credentials**: Use environment variables for sensitive data
4. **.gitignore**: Create for secrets, node_modules, build artifacts

Sample `.gitignore`:
```
.env
.env.local
node_modules/
dist/
build/
*.log
.DS_Store
subscriber-list.csv
config/secrets.json
```

---

## Performance Considerations

### Large HTML Files

The current `index.html` is 1.2MB minified:
- Use targeted file operations (grep, sed) instead of reading entire file
- Consider splitting into smaller components
- If building a web version, implement code splitting
- Optimize images and assets

### Email Delivery

If implementing email distribution:
- Compress images
- Keep total email size under 102KB (Gmail clipping threshold)
- Use CDN for hosted images
- Implement lazy loading for web version

---

## Testing Strategy

### Newsletter Testing

Before publishing:
1. **Content Review**: Proofread for typos, accuracy
2. **Link Testing**: Verify all links work
3. **Image Testing**: Confirm all images load
4. **Email Client Testing**: Test in major email clients
5. **Mobile Testing**: Verify mobile responsiveness
6. **Spam Testing**: Check spam score
7. **A/B Testing**: Test subject lines, send times

### Tools
- [Litmus](https://litmus.com/) - Email testing
- [Mail Tester](https://www.mail-tester.com/) - Spam score
- Browser DevTools - Mobile emulation
- [Email on Acid](https://www.emailonacid.com/) - Email client testing

---

## Troubleshooting

### Common Issues

**Large file operations fail**
- Use streaming/chunk processing
- Use grep/sed instead of reading whole file
- Consider splitting the file

**Git push failures (403 errors)**
- Verify branch name starts with `claude/` and ends with session ID
- Retry with exponential backoff (2s, 4s, 8s, 16s)
- Check network connectivity

**Email rendering issues**
- Inline all CSS
- Use table-based layouts
- Test in target email clients
- Avoid modern CSS features

---

## Resources

### Newsletter Design
- [Really Good Emails](https://reallygoodemails.com/) - Inspiration
- [Email Love](https://emaillove.com/) - Curated examples
- [MJML](https://mjml.io/) - Responsive email framework

### Email Marketing
- [MailChimp Guides](https://mailchimp.com/resources/) - Best practices
- [SendGrid Docs](https://docs.sendgrid.com/) - Email API documentation

### HTML Email Development
- [Campaign Monitor CSS Guide](https://www.campaignmonitor.com/css/) - Email client support
- [Email Client CSS Support](https://www.caniemail.com/) - Compatibility reference

---

## Contributing Guidelines

When AI assistants work on this repository:

1. **Ask First**: If the task is unclear, ask the user for clarification
2. **Small Changes**: Make incremental, testable changes
3. **Document**: Add comments explaining non-obvious code
4. **Test**: Verify changes work before committing
5. **Clean Commits**: One logical change per commit
6. **Branch Properly**: Use `claude/` prefixed branches with session IDs

---

## Contact & Support

**Repository Owner**: jasontbarnesesq
**Project**: Personal Weekly Newsletter
**AI Assistant**: Claude (Anthropic)

For questions about this project, defer to the repository owner's guidance.

---

## Version History

- **2026-01-22**: Initial CLAUDE.md created by Claude AI assistant
- Repository contains single index.html export from Claude.ai
- Active development on branch: `claude/claude-md-mkpwlvpr3z5ndgf4-Y5N6z`

---

## Future Considerations

### Potential Evolution

This project could evolve into:

1. **Automated Newsletter System**
   - Content aggregation from sources
   - AI-generated summaries and commentary
   - Automated scheduling and distribution

2. **Personal Blog/Newsletter Hybrid**
   - Web-based reading experience
   - Email subscription option
   - RSS feed support

3. **Content Management System**
   - Web interface for creating editions
   - Template management
   - Subscriber management
   - Analytics dashboard

4. **AI-Powered Curation**
   - Topic selection based on interests
   - Content summarization
   - Personalization per subscriber
   - Automated research and fact-checking

### Technical Debt to Address

As the project grows:
- Replace minified HTML export with proper source files
- Implement version control for newsletter content
- Add automated testing
- Set up CI/CD pipeline
- Create documentation for manual workflows
- Implement backup/archival system

---

*This document is maintained for AI assistants working with this repository. Update it as the project evolves.*
