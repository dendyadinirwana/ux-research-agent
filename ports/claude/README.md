# Claude Port

This port provides a Claude-uploadable package format.

## Why this exists
Claude skill upload expects **exactly one `SKILL.md`** in the zip file.
The root repository is modular and contains many subskill `SKILL.md` files.

## Build package

From repository root:

```bash
make claude-package
```

or

```bash
./scripts/build_claude_package.sh
```

## Output

The build creates:

- `dist/ux-research-agent-claude.zip`

Zip content is under `ports/claude/claude-import/` and includes:
- one root `SKILL.md`
- configs, styles, references, templates
- flattened subskills as `subskills/*.md` (not `SKILL.md`)
