<p align="center">
  <img alt="Akamai logo" width="320" height="320" src="https://www.eiseverywhere.com/file_uploads/8fca94ae15da82d17d76787b3e6a987a_logo_akamai-developer-experience-2-OL-RGB.png"/>
  <h3 align="center">GitHub Action to build and deploy Jekyll bundle to Akamai Netstorage</h3>
  <p align="center">
    <img alt="GitHub license" src="https://badgen.net/github/license/jdmevo123/akamai-purge-action?cache=300&color=green"/>
  </p>
</p>

# Deploy Jekyll bundle to Akamai Netstorage  
This action allows you to build your Jekyll static site and deploy it to Akamai NetStorage.

Jekyll is a simple, blog-aware, static site generator for personal, project, or organization sites.

Akamai NetStorage is a holistic solution for maintaining large collections of on-demand digital content–including electronic images, streaming media files, software, documents, and other digital objects–while also offering performance compatible with today’s online delivery needs and customers’ expectations of instant access.

## Usage

All sensitive variables should be [set as encrypted secrets](https://help.github.com/en/articles/virtual-environments-for-github-actions#creating-and-using-secrets-encrypted-variables) in the action's configuration.

## Authentication

You need to declare a `AKAMAI_PRIVATEKEY` secret in your repository containing the following structure :
```
-----BEGIN OPENSSH PRIVATE KEY-----
xxxx
-----END OPENSSH PRIVATE KEY-----
```
To setup a key and attach it to your netstorage account, follow this <a href="https://learn.akamai.com/en-us/webhelp/netstorage/netstorage-user-guide/GUID-3F8FC978-5A75-40E4-9220-8EAB862625E8.html" target="_blank">Netstorage Overview</a>.

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
        AKAMAI_PRIVATEKEY: ${{ secrets.AKAMAI_PRIVATEKEY }}
      with:
        uploadDirectory: '12345'
        path: '_site'
        domainName: 'example1' 
```
Upload directory and domain name can be found in netstorage. Please <a href="https://learn.akamai.com/en-us/webhelp/netstorage/netstorage-user-guide/GUID-3F8FC978-5A75-40E4-9220-8EAB862625E8.html" target="_blank">follow this guide</a>.

## License

This project is distributed under the [MIT license](LICENSE.md).
