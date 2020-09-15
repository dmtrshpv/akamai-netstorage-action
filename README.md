<p align="center">
  <img alt="Akamai logo" width="320" height="320" src="https://www.eiseverywhere.com/file_uploads/8fca94ae15da82d17d76787b3e6a987a_logo_akamai-developer-experience-2-OL-RGB.png"/>
  <h3 align="center">GitHub Action to build and deploy Jekyll bundle to Akamai Netstorage</h3>
  <p align="center">
    <img alt="GitHub license" src="https://badgen.net/github/license/jdmevo123/akamai-purge-action?cache=300&color=green"/>
  </p>
</p>

# Deploy Jekyll bundle to Akamai Netstorage  


## Usage

All sensitive variables should be [set as encrypted secrets](https://help.github.com/en/articles/virtual-environments-for-github-actions#creating-and-using-secrets-encrypted-variables) in the action's configuration.

## Authentication

You need to declare a `AKAMAI_EDGERC` secret in your repository containing the following structure :
```
[netstorage]
key = <HTTP API KEY>
id = <ID>
group = <Group>
host = <host>
cpcode = <default cpcode>
```
You can retrieve these from <a href="https://github.com/akamai/cli-netstorage" target="_blank">CLI Netstorage Overview</a>.

## Inputs

### `something`
**Required**
something: Currently set to use repository name

## `workflow.yml` Example

Place in a `.yml` file such as this one in your `.github/workflows` folder. [Refer to the documentation on workflow YAML syntax here.](https://help.github.com/en/articles/workflow-syntax-for-github-actions)

```yaml
steps:
    - uses: actions/checkout@v1
    - name: Build and Deploy
      uses: jdmevo123/akamai-jekyll-netstorage-action@1.0
      env:
        EDGERC: ${{ secrets.AKAMAI_EDGERC }}
      with:
        command: 'invalidate' 
```
## License

This project is distributed under the [MIT license](LICENSE.md).
