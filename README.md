```
 File              : README.md
 Author            : Alexandre Saison <alexandre.saison@inarix.com>
 Date              : 18.03.2021
 Last Modified Date: 18.03.2021
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
  uses: inarix/glowing-winner@master
- name: comment PR
  uses: unsplash/comment-on-pr@master
  env:
    GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
  with:
    msg: 'Coverage : ${{ steps.ci_test.outputs.coverage }}'
    check_for_duplicate_msg: false
```
