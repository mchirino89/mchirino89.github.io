# Auto-Merge Vulnerability PRs

This repository is configured to automatically merge Pull Requests that fix security vulnerabilities.

## How it Works

1. **Dependabot Monitoring**: Dependabot is configured in `.github/dependabot.yml` to automatically scan for security vulnerabilities in Ruby dependencies (Bundler) weekly.

2. **Automatic PR Creation**: When Dependabot detects a vulnerability, it automatically creates a Pull Request with the fix and labels it with "dependencies" and "security".

3. **CI Validation**: The auto-merge workflow waits for all CI checks (Ruby tests, CodeQL analysis) to pass.

4. **Auto-Approval & Merge**: Once all checks pass, the workflow:
   - Automatically approves the PR
   - Merges it using squash merge
   - Keeps the project vulnerability-free without manual intervention

## Workflow Details

The workflow (`.github/workflows/auto-merge-vulnerability-prs.yml`) triggers on:
- Pull request events (opened, synchronize, reopened)
- Workflow completion events from Ruby and CodeQL workflows

It only processes PRs that meet ALL of these criteria:
- Created by `dependabot[bot]`
- Contains "security" or "vulnerability" in title/body OR has "security" label
- All CI checks pass successfully

## Configuration

### Dependabot Settings
- **Package Ecosystem**: Bundler (Ruby)
- **Schedule**: Weekly scans
- **Labels**: `dependencies`, `security`
- **Grouping**: Security updates are grouped together

### Permissions Required
The workflow requires:
- `contents: write` - To merge PRs
- `pull-requests: write` - To approve and manage PRs
- `checks: read` - To read CI check status

## Manual Override

If you need to prevent a specific vulnerability PR from auto-merging:
1. Remove the "security" label from the PR
2. Or change the PR title/body to not mention "vulnerability" or "security"

The workflow will then skip that PR and wait for manual review.

## Testing

To test this workflow:
1. Create a test PR from Dependabot (or simulate one)
2. Ensure it has the "security" label or "vulnerability" in the title
3. Wait for CI checks to complete
4. The workflow should automatically approve and merge the PR

## Benefits

- **Zero-day vulnerability protection**: Vulnerabilities are fixed as soon as Dependabot detects them
- **Reduced maintenance burden**: No manual intervention needed for security updates
- **Always up-to-date**: Dependencies stay current with security patches
- **CI-validated**: Only merges if all tests pass
