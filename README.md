```
 File              : README.md
 Author            : Alexandre Saison <alexandre.saison@inarix.com>
 Date              : 18.03.2021
 Last Modified Date: 29.03.2021
 Last Modified By  : Alexandre Saison <alexandre.saison@inarix.com>
```
# glowing-winner
  Auto generated name for YARN Github Action

  This action runs yarn test 

## Outputs

### `coverage`

Unit test coverage when exported by yarn test!

## Example usage
```yaml
- name: coverage
  id: ci_test
  uses: inarix/glowing-winner@v1
- name: comment PR
  uses: unsplash/comment-on-pr@master
  env:
    GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
  with:
    msg: 'Coverage : ${{ steps.ci_test.outputs.coverage }}'
    check_for_duplicate_msg: false
```

## How to create Github action

First create a folder **.github/workflows** then create a new YAML file called with the name of the Job you want to create.

For example you can create ```.github/workflows/main.yaml```
```yaml
name: Yarn CI Unit Testing
on: pull_request
jobs:
  test:
    name: Unit Tests
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2
      - name: Packages installation
        uses: CultureHQ/actions-yarn@master
        with:
          args: install
      - name: Test
        id: ci_test
        uses: inarix/glowing-winner@v1
      - name: comment PR
        uses: unsplash/comment-on-pr@master
        env:
          GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
        with:
          msg: 'Coverage : ${{ steps.ci_test.outputs.coverage }}'
          check_for_duplicate_msg: true
```

This will create a Github Action on each update (push, rebase ...) in a pull request.

NB: You need to always add ```- uses: actions/checkout@v2``` for the github action to fetch your code !
