# Instructions for Coding Agents

This document provides guidelines for AI coding agents working on this project.

## Project Overview

This project contains custom images that include spiffe-helper for SPIFFE/SPIRE integration. Review the codebase structure before making changes.

## Development Workflow

1. **Understand Before Changing**: Always read relevant files and understand the context before making modifications
2. **Follow Existing Patterns**: Match the coding style, architecture patterns, and conventions already in use
3. **Test Your Changes**: Verify that changes work as expected and don't break existing functionality
4. **Commit Properly**: Write clear, descriptive commit messages following the existing format

## Code Standards

- Follow language-specific best practices (Go, SQL, Shell, etc.)
- Maintain consistency with existing code structure
- Include appropriate error handling
- Add comments for complex logic
- Keep functions focused and modular

## Security Considerations

- This project uses SPIFFE/SPIRE for identity and authentication
- Never hardcode credentials or sensitive data
- Follow security best practices for database connections
- Validate all inputs appropriately

## Git Practices

- Create feature branches for new work
- Follow conventional commits format: `type(scope): description`
  - Types: `feat`, `fix`, `docs`, `style`, `refactor`, `test`, `chore`
  - Example: `feat(postgres): replace spire-server with spiffe-helper`
- Keep commits atomic and focused
- Reference issue numbers when applicable

## Documentation

- Update relevant documentation when making changes
- Keep README.md current
- Document configuration changes
- Add inline comments for complex logic

## Testing

- Test changes locally before committing
- Verify database migrations work correctly
- Check that SPIRE integration remains functional
- Validate configuration changes

## Common Tasks

### Adding New Features
1. Review existing architecture
2. Plan the implementation
3. Write the code following existing patterns
4. Test thoroughly
5. Document the changes

### Fixing Bugs
1. Reproduce the issue
2. Identify the root cause
3. Implement the fix
4. Verify the fix works
5. Add tests if appropriate

### Refactoring
1. Understand the current implementation
2. Plan the refactoring approach
3. Make incremental changes
4. Test after each change
5. Update documentation

## Questions?

When in doubt, examine existing code for patterns and conventions. Consistency is key.
